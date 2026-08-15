# Build-Time Document Revision                  v1.1.0 | 2026/08/15 | alan-docs
# ==============================================================================
# Fills in a document's revision line at build time:
#
#   revdate    Always. Set to the date of the last commit that touched the
#              document's own folder, so the date on the title page tracks the
#              latest content change instead of being maintained by hand.
#
#   revnumber  Only when building the alpha stream, where "+dev" is appended to
#              mark the document as describing a development snapshot rather
#              than a released SDK. The base number stays an editorial choice:
#              it names a release of ALAN, which Git cannot work out.
#
# Load it with Asciidoctor's `-r` option, e.g.:
#
#   asciidoctor -r ../_assets/adoc/doc-revision.rb ... manual.asciidoc
#
# THE ALPHA STREAM
# ----------------
# Set the environment variable `ALAN_DOCS_STREAM` to `alpha` to get the "+dev"
# suffix; anything else (or nothing) builds the document as it stands:
#
#   ALAN_DOCS_STREAM=alpha ./html_build.sh
#
# An environment variable is used rather than an attribute so that the build
# scripts need no arguments of their own.
#
# NOTES
# -----
# * The date is taken from the document's own folder, so editing the manual
#   does not re-date the cookbook, and touching shared assets re-dates nothing.
# * A shallow clone cannot see the dating commit, so CI must check out the full
#   history (`fetch-depth: 0`).
# * The date is formatted in Ruby rather than by Git, because Git's `%cd`
#   month names follow the system locale while Ruby's `strftime` is always
#   English -- otherwise the date would come out in the builder's language.
# * If anything goes wrong (no Git, not a repository, an untracked folder),
#   the document keeps whatever `:revdate:` its header declares.
# * An explicit `-a revdate=...` on the command line still wins, since
#   attributes set through the API are locked.
# ==============================================================================
require 'asciidoctor/extensions'
require 'date'

Asciidoctor::Extensions.register do
  tree_processor do
    process do |document|
      # ----------------------------------------------------------------------
      # revdate -- from the last commit that touched this document
      # ----------------------------------------------------------------------
      docdir = document.attributes['docdir']
      if docdir && !docdir.empty?
        # `%cs` is the committer date in strict YYYY-MM-DD form (Git 2.21+):
        iso = begin
          `git -C "#{docdir}" log -1 --format=%cs -- . 2>/dev/null`.strip
        rescue StandardError
          ''
        end

        unless iso.empty?
          begin
            document.set_attribute 'revdate', (Date.strptime iso, '%Y-%m-%d').strftime('%B %-d, %Y')
          rescue ArgumentError
            # Leave whatever the document header declares.
          end
        end
      end

      # ----------------------------------------------------------------------
      # revnumber -- marked as a development snapshot for the alpha stream
      # ----------------------------------------------------------------------
      if (ENV['ALAN_DOCS_STREAM'] == 'alpha') &&
         (revnumber = document.attributes['revnumber']) &&
         !revnumber.empty? && !(revnumber.end_with? '+dev')
        document.set_attribute 'revnumber', %(#{revnumber}+dev)
      end

      nil
    end
  end
end
