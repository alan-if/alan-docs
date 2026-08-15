# Rouge Theme for ALAN (PDF backend)             v1.0.0 | 2026/08/15 | alan-docs
# ==============================================================================
# Registers the project's ALAN lexer with Rouge and defines a Rouge theme that
# reproduces the "AlanHL" colour scheme used by the DocBook/FOP toolchain, as
# defined in:
#
#   _assets/alan-xsl-fopub/xsl-fopub/color-scheme.xsl
#
# That scheme is itself based on the "github.com style" for highlight.js, so the
# PDF, the HTML and the legacy FOP output all stay recognisably the same.
#
# Load it with Asciidoctor's `-r` option and select it with `-a rouge-style`:
#
#   asciidoctor-pdf -r ../_assets/pdf/alan-rouge-theme.rb \
#                   -a source-highlighter=rouge -a rouge-style=alandocs ...
#
# NOTE: This is the PDF counterpart of "_assets/rouge/custom-rouge-adapter.rb",
#       which is HTML-only (it injects a docinfo stylesheet).
# ==============================================================================
require 'rouge'

# The ALAN lexer, shared with the HTML toolchain:
require File.expand_path('../rouge/alan3.rb', File.dirname(__FILE__))

module Rouge
  module Themes
    class AlanDocs < CSSTheme
      name 'alandocs'

      # "AlanHL" palette, from "color-scheme.xsl":
      #   normal   #333333
      #   keyword  #990000  (dark red)
      #   class    #000080  (dark blue)
      #   string   #008080  (dark green)
      #   comment  #999988  (dark grey)

      style Text, fg: '#333333'

      style Comment, fg: '#999988', italic: true

      style Keyword, fg: '#990000'
      style Keyword::Reserved, fg: '#990000'

      # Predefined ALAN classes (`location`, `object`, `actor`, ...):
      style Name::Builtin, fg: '#000080'

      style Name, fg: '#333333'
      style Name::Other, fg: '#333333'

      style Literal::String, fg: '#008080'
      style Literal::String::Escape, fg: '#008080', bold: true
      style Literal::String::Interpol, fg: '#008080', bold: true

      style Literal::Number, fg: '#333333'
      style Operator, fg: '#333333'

      style Error, fg: '#a61717', bg: '#e3d2d2'
    end
  end
end
