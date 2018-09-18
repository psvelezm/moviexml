<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Assignment 1</title>
      </head>
      <body>
        <h1>Top 15 Favorite Movies</h1>
        <table>
          <xsl:apply-templates select="AllMovies/movie">
            <xsl:sort select="title" order="ascending"/>
          </xsl:apply-templates>
        </table>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="AllMovies/movie">
    <tr>
      <td>
        <xsl:value-of select="title"/>
      </td>
    </tr>
  </xsl:template>
</xsl:stylesheet>