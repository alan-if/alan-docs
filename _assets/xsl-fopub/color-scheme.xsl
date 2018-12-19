<?xml version="1.0" encoding="UTF-8"?>
<!--
  "color-scheme.xsl" v0.1.2 (2018/12/19)
  ==============================================================================
  This file defines the color schemes used in the documents of the Alan-Docs
  project:
      https://github.com/alan-if/alan-docs
  Created by Tristano Ajmone:
      https://github.com/tajmone
  ==============================================================================
-->
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <!--**************************************************************************
  *                                                                            *
  *                                COLOR SCHEME                                *
  *                                                                            *
  ***************************************************************************-->

  <!-- Alan-Docs theme -->
  <xsl:param name="text.color">#222222</xsl:param>
  <xsl:param name="link.color">#005498</xsl:param>
  <xsl:param name="border.color">#DDDDDD</xsl:param>
  <xsl:param name="header.font-weight">normal</xsl:param>
  <xsl:param name="title.color">#BA3925</xsl:param>
  <xsl:param name="chapter.title.color" select="$title.color"/>
  <xsl:param name="section.title.color" select="$title.color"/>
  <xsl:param name="caption.color">#7A2518</xsl:param>
  
  <!-- List Bullet Color -->
  <xsl:param name="list_bullet.color">#FD7070</xsl:param><!-- Red -->

  <!-- Inline Code -->
  <xsl:param name="inline_code.color" select="$text.color"/>
  <xsl:param name="inline_code.font-weight">normal</xsl:param>
  <xsl:param name="inline_code.background-color">#F5F5F5</xsl:param><!-- Warm White -->

  <!--==========================================================================
                             Verbatim Blocks Defaults                           
  ==============================================================================
  Defaults for Code, Verbatim and Listing blocks that don't have custom setting.
  -->

  <xsl:param name="Verbatim.background"   >#FCFCFC</xsl:param><!-- Warm White -->
  <xsl:param name="Verbatim.color"        >#222222</xsl:param><!-- Warm Black -->
  <xsl:param name="Verbatim.border.color" >#E6E6E6</xsl:param><!-- Warm Grey -->
  <xsl:param name="Verbatim.border.radius">3pt</xsl:param>
  <xsl:param name="Verbatim.border.width" >.25pt</xsl:param>
  <xsl:param name="Verbatim.border.style" >solid</xsl:param>

  <!--==========================================================================
                                 Example Defaults                               
  ==============================================================================
  Default values for Example blocks.                                         -->

  <xsl:param name="Example.background"   >#FCFCFC</xsl:param><!-- Warm White -->
  <xsl:param name="Example.color"        >#222222</xsl:param><!-- Warm Black -->
  <xsl:param name="Example.border.color" >#E6E6E6</xsl:param><!-- Warm Grey -->
  <xsl:param name="Example.border.radius">3pt</xsl:param>
  <xsl:param name="Example.border.width" >.25pt</xsl:param>
  <xsl:param name="Example.border.style" >solid</xsl:param>

  <!--==========================================================================
                                       Alan                                     
  ==============================================================================
  Alan sourcecode syntax highlighting theme.

  GITHUB SCHEME - Based on "github.com style" for highlight.js:
      https://github.com/highlightjs/highlight.js/blob/master/src/styles/github.css
  Author:  (c) Vasily Polovnyov <vast@whiteants.net>                         -->

  <xsl:param name="AlanHL.background">#F8F8F8</xsl:param><!-- Warm White -->
  <xsl:param name="AlanHL.class"     >#000080</xsl:param><!-- Dark Blue -->
  <xsl:param name="AlanHL.comment"   >#999988</xsl:param><!-- Dark Grey -->
  <xsl:param name="AlanHL.hero"       select="$AlanHL.normal"></xsl:param>
  <xsl:param name="AlanHL.keyword"   >#990000</xsl:param><!-- Dark Red -->
  <xsl:param name="AlanHL.normal"    >#333333</xsl:param>
  <xsl:param name="AlanHL.number"     select="$AlanHL.normal"></xsl:param>
  <xsl:param name="AlanHL.operator"   select="$AlanHL.normal"></xsl:param>
  <xsl:param name="AlanHL.quotedId"   select="$AlanHL.normal"></xsl:param>
  <xsl:param name="AlanHL.string"    >#008080</xsl:param><!-- Dark Green -->
  <!-- Borderless: -->
  <xsl:param name="AlanHL.border.color">transparent</xsl:param>
  <xsl:param name="AlanHL.border.width">0</xsl:param>
  <xsl:param name="AlanHL.border.style">none</xsl:param>
  <xsl:param name="AlanHL.border.radius" select="$Verbatim.border.radius"></xsl:param>

  <!--==========================================================================
                                       BNF                                      
  ==============================================================================
  BNF rules color scheme.                                                    -->

  <xsl:param name="BNF.background"  >#FFEBD6</xsl:param>
  <xsl:param name="BNF.color"       >#492E11</xsl:param>
  <!-- Borderless: -->
  <xsl:param name="BNF.border.color">transparent</xsl:param>
  <xsl:param name="BNF.border.width">0</xsl:param>
  <xsl:param name="BNF.border.style">none</xsl:param>
  <xsl:param name="BNF.border.radius" select="$Verbatim.border.radius"></xsl:param>

  <!--==========================================================================
                                 Game Transcripts                               
  ==============================================================================
  IF Game Transcripts color scheme (example,role="gametranscript").          -->

  <xsl:param name="IFPlay.background"  >#F7FDFF</xsl:param>
  <xsl:param name="IFPlay.color"       >#0089B6</xsl:param>
  <xsl:param name="IFPlay.border.color">#CCF2FF</xsl:param>
  <xsl:param name="IFPlay.border.width" >.15pt</xsl:param>
  <xsl:param name="IFPlay.border.style" >solid</xsl:param>
  <xsl:param name="IFPlay.border.radius" select="$Verbatim.border.radius"></xsl:param>
 
  <!--==========================================================================
                                      Shell                                     
  ==============================================================================
  Shell examples color scheme.

  Based on Windows CMD legacy console scheme, by MicroSoft corporation:
      https://blogs.msdn.microsoft.com/commandline/2017/08/02/updating-the-windows-console-colors/
  -->
  <xsl:param name="Shell.background">#000080</xsl:param><!-- DARK_BLUE  -->
  <xsl:param name="Shell.color"     >#C0C0C0</xsl:param><!-- DARK_WHITE -->
  <xsl:param name="Shell.border.color" select="$Shell.background"></xsl:param>
  <xsl:param name="Shell.border.width" >0</xsl:param>
  <xsl:param name="Shell.border.style">none</xsl:param>
  <xsl:param name="Shell.border.radius" select="$Verbatim.border.radius"></xsl:param>

</xsl:stylesheet>
