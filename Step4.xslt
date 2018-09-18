<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
      <html>
        <head>
          <title>Assignment 1</title>
          <style>
            body{
            font-family: Arial, Helvetica, sans-serif
            }

            table{
            background-color: #d4ecfb;
            border-collapse: collapse;
            margin-left: 10px;
            }

            th, tr, td{
            border: 1px solid black;
            }

            #id{
            width:3%;
            text-align: left;
            padding-left: 3px;
            }

            #title{
            width:25%;
            text-align: left;
            }

            #director{
            width:20%;
            text-align: left;
            }

            #year{
            width: 5%;
            text-align: left;
            }

            #headers{
            background-color: #FF69B4;
            }

            td{
            padding-left: 3px;
            }
          </style>
        </head>
        <body>
          <h1>Top 15 Favorite Movies</h1>
          <table>
            <tr id="headers">
              <th id="id">ID</th>
              <th id="title">Title</th>
              <th id="director">Director</th>
              <th id="year">Year</th>
              <th id="genre">Genre</th>
              <th id="link">Link</th>
            </tr>
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
        <xsl:value-of select="@id"/>
      </td>
      <td>
        <xsl:value-of select="title"/>
      </td>
      <td>
        <xsl:value-of select="director"/>
      </td>
      <td>
        <xsl:value-of select="year"/>
      </td>
      <td>
        <xsl:value-of select="genre"/>
      </td>
      <td>
        <xsl:value-of select="link"/>
      </td>
    </tr>
  </xsl:template>
</xsl:stylesheet>
