<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
    xmlns="http://www.w3.org/1999/xhtml">
    
    <xsl:output method="xhtml" html-version="5" omit-xml-declaration="yes" 
        include-content-type="no" indent="yes"/>
    <xsl:template match="body">
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
                    </ul>
                </nav>
                <xsl:apply-templates/>
              </body>
        </html>
        <xsl:template match="div">
            <h2>Page </h2>
            <!--Here I was tyring to output the number but I'm not sure how you would do that with viewable text -Matt W -->
        </xsl:template>
        <xsl:template match="cbml:balloon">
            <p><xsl:apply-templates/></p>
            <!-- I think it would be intresting to put who is saying to it before the text, but again I'm not quite sure how to do it.-->
        </xsl:template>
    </xsl:template>
</xsl:stylesheet>