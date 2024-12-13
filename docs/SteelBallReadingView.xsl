<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
    xmlns="http://www.w3.org/1999/xhtml"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0" xmlns:cbml="http://www.cbml.org/ns/1.0">
    <xsl:output method="xhtml" html-version="5" omit-xml-declaration="yes" 
        include-content-type="no" indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Jojo's Bizzare Adventure: Steel Ball Run CBML Project</title>
                <meta charset="UTF-8" />
                <meta name="author" content="My Name" />
                <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                <link rel="stylesheet" type="text/css" href="SteelBall.css" />
                
            </head>
            <body>
                <h1>Welcome to the Jojo's Bizzare Adventure: Steel Ball Run CBML Project</h1>
                <nav>
                    <ul>
                        <li><a href="index.html">Home</a></li>
                        <li><a href="chapter25.html">Chapter 25</a></li>
                        <li><a href="chapter26.html">Chapter 26</a></li>
                        <li><a href="chapter27.html">Chapter 27</a></li>
                        <li><a href="Characters.html">Characters</a></li>
                    </ul>
                </nav>
                <xsl:apply-templates select="descendant::body"/>
                <footer>
                    <p>Source: <a href="https://mangadex.org/title/b30dfee3-9d1d-4e8d-bfbe-8fcabc3c96f6/jojo-s-bizarre-adventure-part-7-steel-ball-run?order=asc">MangaDex</a></p>
                </footer>
              </body>
        </html>
    </xsl:template>
    <xsl:template match="body">
        <xsl:apply-templates select="descendant::div"/>
    </xsl:template>
    <xsl:template match="div">
        <div class="page">
            <h2><xsl:apply-templates select="@xml:id"/></h2>
            <xsl:apply-templates select="descendant::cbml:panel"/>
        </div>
    </xsl:template>
    <xsl:template match="cbml:panel">
        <div class="panel"><xsl:apply-templates select="descendant::cbml:balloon"/><p class="desc">*<xsl:apply-templates select="descendant::desc"/>*</p></div>
    </xsl:template>
    <xsl:template match="cbml:balloon">
       <!-- <xsl:choose>
            <xsl:when test="@type = sound-effect"><p><span class="{@who => normalize-space()}" "{@type => normalize-space()}"><xsl:apply-templates select="@who"/>: </span>*<xsl:apply-templates/>*</p></xsl:when> -->
      <!--  <xsl:otherwise> -->
        <p><span class="{@who => normalize-space() => translate(' ', '')}"><xsl:apply-templates select="@who"/>: </span><xsl:apply-templates/></p>
        <!-- </xsl:otherwise> -->
       <!-- </xsl:choose> -->
    </xsl:template>
    </xsl:stylesheet>