<?xml version="1.0" encoding="UTF-8"?>
<!--
  "common.xsl" v0.2.0 (2018/09/09)
  ==============================================================================
  This file was taken from the asciidoctor-fopub project, Copyright (C) 2013
  Dan Allen (MIT License):
      https://github.com/asciidoctor/asciidoctor-fopub
  It was modified by Tristano Ajmone to adapt it to the styling needs of the
  Alan-Docs project:
      https://github.com/alan-if/alan-docs
  ==============================================================================
-->
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <!-- Alan-Docs theme -->
  <xsl:param name="text.color">#222222</xsl:param>
  <xsl:param name="link.color">#005498</xsl:param>
  <xsl:param name="border.color">#DDDDDD</xsl:param>
  <xsl:param name="header.font-weight">normal</xsl:param>
  <xsl:param name="title.color">#BA3925</xsl:param>
  <xsl:param name="chapter.title.color" select="$title.color"/>
  <xsl:param name="section.title.color" select="$title.color"/>
  <xsl:param name="caption.color">#7A2518</xsl:param>
  <xsl:param name="code.color" select="$text.color"/>
  <xsl:param name="code.font-weight">normal</xsl:param>
  <xsl:param name="code.background-color">#EEEEEE</xsl:param>

<!-- =============================================== -->
<!-- Monokai Base16 Color Scheme, by Wimer Hazenberg -->
<!-- =============================================== -->
  <xsl:param name="Monokai.base00">#272822</xsl:param><!-- Rangoon Green ( almost black ) -->
  <xsl:param name="Monokai.base01">#383830</xsl:param><!-- Armadillo ( almost black ) -->
  <xsl:param name="Monokai.base02">#49483E</xsl:param><!-- Fuscous Gray ( blackboard-like brown ) -->
  <xsl:param name="Monokai.base03">#75715E</xsl:param><!-- Crocodile -->
  <xsl:param name="Monokai.base04">#A59F85</xsl:param><!-- Tallow -->
  <xsl:param name="Monokai.base05">#F8F8F2</xsl:param><!-- Bianca -->
  <xsl:param name="Monokai.base06">#F5F4F1</xsl:param><!-- Pampas -->
  <xsl:param name="Monokai.base07">#F9F8F5</xsl:param><!-- Desert Storm -->
  <xsl:param name="Monokai.base08">#F92672</xsl:param><!-- Rose ( red ) -->
  <xsl:param name="Monokai.base09">#FD971F</xsl:param><!-- West Side ( intense orange ) -->
  <xsl:param name="Monokai.base0A">#F4BF75</xsl:param><!-- Rajah  ( orange ) -->
  <xsl:param name="Monokai.base0B">#A6E22E</xsl:param><!-- Inch Worm ( green ) -->
  <xsl:param name="Monokai.base0C">#A1EFE4</xsl:param><!-- Water Leaf ( cyan/turquoise ) -->
  <xsl:param name="Monokai.base0D">#66D9EF</xsl:param><!-- Sky Blue -->
  <xsl:param name="Monokai.base0E">#AE81FF</xsl:param><!-- Lavender ( purple ) -->
  <xsl:param name="Monokai.base0F">#CC6633</xsl:param><!-- Piper ( brick red ) -->
  <!-- Extra colors (not in original scheme): -->
  <xsl:param name="Monokai.base10">#FFE792</xsl:param><!-- Golden Glow ( yellow ) -->
  <xsl:param name="Monokai.base11">#E6DB74</xsl:param><!-- Flax ( dull yellow ) -->
  <xsl:param name="Monokai.base12">#1776BC</xsl:param><!-- Lochmara ( blue ) -->
  <xsl:param name="Monokai.base13">#6298CD</xsl:param><!-- Danube ( dull blue ) -->

<!-- ================================== -->
<!-- Syntax Highlighting Theme for Alan -->
<!-- ================================== -->
  <xsl:param name="AlanHL.background" select="$Monokai.base00"></xsl:param>

  <xsl:param name="AlanHL.normal"     select="$Monokai.base05"></xsl:param>
  <xsl:param name="AlanHL.quotedId"   select="$AlanHL.normal"></xsl:param><!-- TEST WITH base12 -->
  <xsl:param name="AlanHL.keyword"    select="$Monokai.base08"></xsl:param>
  <xsl:param name="AlanHL.class"      select="$Monokai.base13"></xsl:param>
  <xsl:param name="AlanHL.comment"    select="$Monokai.base04"></xsl:param>
  <xsl:param name="AlanHL.string"     select="$Monokai.base0B"></xsl:param>
  <xsl:param name="AlanHL.number"     select="$Monokai.base10"></xsl:param>
  <xsl:param name="AlanHL.operator"   select="$Monokai.base0C"></xsl:param>

  <xsl:param name="AlanHL.border.color" select="$Monokai.base04"></xsl:param>
  
<!-- 
  <xsl:param name="AlanHL.xxx" select="$Monokai.xxx"></xsl:param>
-->


  <!-- Asciidoctor theme -->
  <!-- 
  <xsl:param name="text.color">#222222</xsl:param>
  <xsl:param name="link.color">#005498</xsl:param>
  <xsl:param name="border.color">#DDDDDD</xsl:param>
  <xsl:param name="header.font-weight">normal</xsl:param>
  <xsl:param name="title.color">#BA3925</xsl:param>
  <xsl:param name="chapter.title.color" select="$title.color"/>
  <xsl:param name="section.title.color" select="$title.color"/>
  <xsl:param name="caption.color">#7A2518</xsl:param>
  <xsl:param name="code.color" select="$text.color"/>
  <xsl:param name="code.font-weight">normal</xsl:param>
  <xsl:param name="code.background-color">#EEEEEE</xsl:param>
  -->

  <!-- Foundation theme -->
  <!--   
  <xsl:param name="text.color">#222222</xsl:param>
  <xsl:param name="link.color">#2BA6CB</xsl:param>
  <xsl:param name="border.color">#DDDDDD</xsl:param>
  <xsl:param name="header.font-weight">bold</xsl:param>
  <xsl:param name="title.color">#222222</xsl:param>
  <xsl:param name="chapter.title.color" select="$title.color"/>
  <xsl:param name="section.title.color" select="$title.color"/>
  <xsl:param name="caption.color">#7A2518</xsl:param>
  <xsl:param name="code.color">#7F0A0C</xsl:param>
  <xsl:param name="code.font-weight">bold</xsl:param>
  <xsl:param name="code.background-color">transparent</xsl:param>
  -->
  
  <!-- Colony theme -->
  <!-- 
  <xsl:param name="text.color">#222222</xsl:param>
  <xsl:param name="link.color">#00579E</xsl:param>
  <xsl:param name="border.color">#DDDDDD</xsl:param>
  <xsl:param name="header.font-weight">normal</xsl:param>
  <xsl:param name="title.color">#7B2D00</xsl:param>
  <xsl:param name="chapter.title.color" select="$title.color"/>
  <xsl:param name="section.title.color" select="$title.color"/>
  <xsl:param name="caption.color">#003B6B</xsl:param>
  <xsl:param name="code.color">#003426</xsl:param>
  <xsl:param name="code.font-weight">bold</xsl:param>
  <xsl:param name="code.background-color">transparent</xsl:param>
  -->

  <!-- disable messages that cause some processors to exit prematurely -->
  <xsl:template name="root.messages"/>

  <!-- Disable watermark image to avoid long timeouts fetching from internet -->
  <xsl:param name="draft.watermark.image"/>

<!-- (originally commented out:) -->
<!--   <xsl:param name="use.extensions">1</xsl:param> -->
  

  <!-- show URLs of links in footnotes -->
  <xsl:param name="ulink.show" select="1"/>
  <xsl:param name="ulink.footnotes" select="1"/>

  <!-- disable period at end of formal block title -->
  <xsl:param name="runinhead.default.title.end.punct"/>
  <xsl:param name="runinhead.default.title.break.after" select="1"/>

  <xsl:param name="chapter.autolabel">
    <xsl:choose>
      <xsl:when test="/processing-instruction('asciidoc-numbered')">1</xsl:when>
      <xsl:otherwise>0</xsl:otherwise>
    </xsl:choose>
  </xsl:param>
  <xsl:param name="section.autolabel">
    <xsl:choose>
      <xsl:when test="/processing-instruction('asciidoc-numbered')">1</xsl:when>
      <xsl:otherwise>0</xsl:otherwise>
    </xsl:choose>
  </xsl:param>
  <xsl:param name="section.autolabel.max.depth">
    <xsl:choose>
      <xsl:when test="/processing-instruction('asciidoc-numbered')">
        <xsl:variable name="depth">
          <xsl:call-template name="pi-attribute">
            <xsl:with-param name="pis" select="/processing-instruction('asciidoc-numbered')"/>
            <xsl:with-param name="attribute" select="'maxdepth'"/>
          </xsl:call-template>
        </xsl:variable>
        <xsl:choose>
          <xsl:when test="$depth != ''"><xsl:value-of select="$depth"/></xsl:when>
          <xsl:otherwise>2</xsl:otherwise>
        </xsl:choose>
      </xsl:when>
      <xsl:otherwise>2</xsl:otherwise>
    </xsl:choose>
  </xsl:param>
  <xsl:param name="section.label.includes.component.label" select="1"/>

  <xsl:param name="suppress.navigation">0</xsl:param>
  <xsl:param name="navig.graphics.extension">.png</xsl:param>
  <xsl:param name="navig.graphics">0</xsl:param>
  <xsl:param name="navig.graphics.path">images/icons/</xsl:param>
  <xsl:param name="navig.showtitles">0</xsl:param>

  <xsl:param name="shade.verbatim">0</xsl:param>

  <xsl:attribute-set name="shade.verbatim.style">
    <xsl:attribute name="border">none</xsl:attribute>
    <xsl:attribute name="background-color">#E0E0E0</xsl:attribute>
  </xsl:attribute-set>

<!-- >>> BEGIN >>> TRYING TO ENABLE LINE-NUMBERING IN CODE BLOCKS ==========
    Not supported by asciidoctor-fopub! See Issue #65:

        https://github.com/asciidoctor/asciidoctor-fopub/issues/65

    For a solution, see:
        https://github.com/asciidoctor/asciidoctor-fopub/issues/65#issuecomment-275987927
    ... requires manual installation of missing java extension, or using @getreu's fork:
        https://github.com/getreu/asciidoctor-fopub

    Enabling linenumbering also requires enabling extensiones (also found at line 123): -->
  <!-- <xsl:param name="use.extensions">1</xsl:param> -->

<!-- (present in original file, but as commented out:) -->  
<!-- 
  <xsl:param name="linenumbering.extension">1</xsl:param>
  <xsl:param name="linenumbering.width">2</xsl:param>
  <xsl:param name="linenumbering.everyNth">1</xsl:param>

-->
<!-- (added: not in original:-->
  <!-- <xsl:param name="linenumbering.separator">1</xsl:param> -->
<!-- <<< END   <<< TRYING TO ENABLE LINE-NUMBERING IN CODE BLOCKS ========== -->

  <xsl:param name="admon.graphics">1</xsl:param>
  <xsl:param name="admon.graphics.path">images/icons/</xsl:param>
  <xsl:param name="admon.graphics.extension">.svg</xsl:param>
  <!--
  <xsl:param name="admon.graphics.extension">.png</xsl:param>
  -->
  <!--
  <xsl:param name="admon.style">
    <xsl:text>margin-left: 0; margin-right: 10%;</xsl:text>
  </xsl:param>
  -->
  <xsl:param name="admon.textlabel">0</xsl:param>

  <xsl:param name="chunk.first.sections" select="0"/>
  <xsl:param name="chunk.quietly" select="0"/>
  <xsl:param name="chunk.section.depth" select="1"/>
  <xsl:param name="chunk.toc" select="''"/>
  <xsl:param name="chunk.tocs.and.lots" select="0"/>

  <xsl:param name="table.borders.with.css" select="1"/>
  <xsl:param name="table.cell.border.color" select="'#527bbd'"/>

  <xsl:param name="table.cell.border.style" select="'solid'"/>
  <xsl:param name="table.cell.border.thickness" select="'1px'"/>
  <xsl:param name="table.footnote.number.format" select="'a'"/>
  <xsl:param name="table.footnote.number.symbols" select="''"/>
  <xsl:param name="table.frame.border.color" select="'#527bbd'"/>
  <xsl:param name="table.frame.border.style" select="'solid'"/>
  <xsl:param name="table.frame.border.thickness" select="'2px'"/>
  <!-- disabled due to missing adjustColumnWidths function -->
  <xsl:param name="tablecolumns.extension">0</xsl:param>

  <xsl:param name="generate.toc">
    <xsl:choose>
      <xsl:when test="/processing-instruction('asciidoc-toc')">
article toc,title
book    toc,title,figure,table,example,equation
      </xsl:when>
      <xsl:otherwise>
article nop
book    nop
      </xsl:otherwise>
    </xsl:choose>
  </xsl:param>

</xsl:stylesheet>
