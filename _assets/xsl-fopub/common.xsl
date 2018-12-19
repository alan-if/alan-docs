<?xml version="1.0" encoding="UTF-8"?>
<!--
  "common.xsl" v0.4.1 (2018/12/19)
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


  <!--**************************************************************************
  *                                                                            *
  *                                  SETTINGS                                  *
  *                                                                            *
  ***************************************************************************-->

  <!-- disable messages that cause some processors to exit prematurely -->
  <xsl:template name="root.messages"/>

  <!-- Default to double-sided document (tweaked) -->
  <xsl:param name="double.sided" select="1"></xsl:param>

  <!-- Disable watermark image to avoid long timeouts fetching from internet -->
  <xsl:param name="draft.watermark.image"/>

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

  <!--==========================================================================
                                   Admonitions
  ===========================================================================-->
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
  <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
  <xsl:param name="chunk.first.sections" select="0"/>
  <xsl:param name="chunk.quietly" select="0"/>
  <xsl:param name="chunk.section.depth" select="1"/>
  <xsl:param name="chunk.toc" select="''"/>
  <xsl:param name="chunk.tocs.and.lots" select="0"/>
  <!--==========================================================================
                                      Tables
  ===========================================================================-->
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
  <!--==========================================================================
                                Table of Contents
  ===========================================================================-->
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
