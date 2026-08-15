# Git-Derived Revision Date                     v1.0.0 | 2026/08/15 | alan-docs
# ==============================================================================
# Sets a document's `revdate` to the date of the last commit that touched that
# document's folder, so that the date on the title page always reflects the
# latest content change instead of having to be maintained by hand.
#
# `revnumber` is deliberately left alone: it names a release of the ALAN SDK,
# which is an editorial decision, not something Git can work out.
#
# Load it with Asciidoctor's `-r` option, e.g.:
#
#   asciidoctor -r ../_assets/adoc/git-revdate.rb ... manual.asciidoc
#
# NOTES
# -----
# * The date is taken from the document's own folder, so editing the manual
#   does not re-date the cookbook, and touching shared assets re-dates nothing.
# * The date is formatted in Ruby rather than by Git, because Git's `%cd`
#   month names follow the system locale while Ruby's `strftime` is always
#   English -- otherwise the date would come out in the builder's language.
# * If anything goes wrong (no Git, not a repository, an unreleased folder),
#   the document keeps whatever `:revdate:` its header declares.
# * An explicit `-a revdate=...` on the command line still wins, since
#   attributes set through the API are locked.
# ==============================================================================
require 'asciidoctor/extensions'
require 'date'

Asciidoctor::Extensions.register do
  tree_processor do
    process do |document|
      docdir = document.attributes['docdir']
      next unless docdir && !docdir.empty?

      # `%cs` is the committer date in strict YYYY-MM-DD form (Git 2.21+):
      iso = begin
        `git -C "#{docdir}" log -1 --format=%cs -- . 2>/dev/null`.strip
      rescue StandardError
        ''
      end
      next if iso.empty?

      begin
        revdate = (Date.strptime iso, '%Y-%m-%d').strftime '%B %-d, %Y'
      rescue ArgumentError
        next
      end

      document.set_attribute 'revdate', revdate
      nil
    end
  end
end
