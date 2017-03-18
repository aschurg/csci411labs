<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <body>
        <h2>In The News</h2>
        <xsl:for-each select="news/article">
          <h3>
            <xsl:value-of select="title"/>
          </h3>
          <img>
            <xsl:attribute name="src">
              <xsl:value-of select="@img"/>
            </xsl:attribute>
          </img>
          <h4>
            Written by <xsl:value-of select="author"/> For
            <xsl:value-of select="publisher"/>
          </h4>
          <h5>
            <xsl:value-of select="date"/>
          </h5>
          <p>
            <xsl:value-of select="content"/>
          </p>
          
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>