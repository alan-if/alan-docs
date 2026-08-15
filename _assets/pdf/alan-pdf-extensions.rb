# Asciidoctor PDF Extensions for ALAN            v1.0.0 | 2026/08/15 | alan-docs
# ==============================================================================
# Gives BNF grammar blocks their own background colour in the PDF, matching the
# `BNF.*` settings of the DocBook/FOP colour scheme:
#
#   _assets/alan-xsl-fopub/xsl-fopub/color-scheme.xsl
#
# WHY AN EXTENSION IS NEEDED
# --------------------------
# Asciidoctor PDF resolves block backgrounds per theme *category* (`code`,
# `example`, `quote`, ...); block roles only carry text alignment, so a theme
# key alone cannot give `[source,bnf]` blocks a different background from
# `[source,alan]` ones. This wraps the code block converter and swaps the three
# `code` colours for the duration of a BNF block.
#
# The manual's "Notation" section promises that grammar rules "are typeset
# against a coloured background", so this keeps that statement true.
#
# Load it with Asciidoctor's `-r` option; see "manual/pdf_build_adpdf.sh".
# ==============================================================================
require 'asciidoctor/pdf'

module AlanDocs
  module BnfBlockStyle
    # From "color-scheme.xsl": BNF.background, BNF.color; BNF is borderless
    # there, so the border is painted in the background colour.
    BACKGROUND = 'FFEBD6'
    FONT_COLOR = '492E11'

    def convert_code node
      return super unless (node.attr 'language') == 'bnf'

      saved = [
        @theme.code_background_color,
        @theme.code_font_color,
        @theme.code_border_color,
      ]
      @theme.code_background_color = BACKGROUND
      @theme.code_font_color = FONT_COLOR
      @theme.code_border_color = BACKGROUND
      begin
        super
      ensure
        @theme.code_background_color,
          @theme.code_font_color,
          @theme.code_border_color = saved
      end
    end
  end
end

Asciidoctor::PDF::Converter.prepend AlanDocs::BnfBlockStyle
