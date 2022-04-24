<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">

    <html>
      <head>
        <link rel="stylesheet" href="CV.css"></link>
      </head>
      <body>
        <h2>CV</h2>
        <!--PersonalDetails-->
        <table border="1">
          <tr bgcolor="#9acd32">
            <th align="left">Full Name</th>
            <th align="left">Email</th>
            <th align="left">Phone Number</th>
            <th align="left">Photo</th>
          </tr>
          <xsl:for-each select="CV/PersonalDetails">
            <tr>
              <td>
                <xsl:value-of select="FullName"/>
              </td>
              <td>
                <xsl:value-of select="Email"/>
              </td>
              <td>
                <xsl:value-of select="PhoneNumber"/>
              </td>
              <td>
                <img width="200px">
                  <xsl:attribute name="src">
                    <xsl:value-of select="Photo"/>
                  </xsl:attribute>
                </img>
              </td>
            </tr>
          </xsl:for-each>
        </table>

        <!--Employment History-->
        <table border="1">
          <tr bgcolor="#9acd32">
            <th align="left">Start</th>
            <th align="left">End</th>
            <th align="left">Company</th>
            <th align="left">Duties</th>
            <th align="left">Description</th>
          </tr>
          <xsl:for-each select="CV/EmpHistory">
            <tr>
              <td>
                <xsl:value-of select="Start"/>
              </td>
              <td>
                <xsl:value-of select="End"/>
              </td>
              <td>
                <xsl:value-of select="Company"/>
              </td>
              <td>
                <xsl:value-of select="Duties"/>
              </td>
              <td>
                <xsl:value-of select="Description"/>
              </td>
            </tr>
          </xsl:for-each>
        </table>

        <!--Education-->
        <table border="1">
          <tr bgcolor="#9acd32">
            <th align="left">Start</th>
            <th align="left">End</th>
            <th align="left">Name</th>
            <th align="left">Level</th>
            <th align="left">Grade</th>
          </tr>
          <xsl:for-each select="CV/Education/Insitution/Subjects/Subject">
            <tr>
              <td>
                <xsl:value-of select="Start"/>
              </td>
              <td>
                <xsl:value-of select="End"/>
              </td>
              <td>
                <xsl:value-of select="Name"/>
              </td>
              <td>
                <xsl:value-of select="Level"/>
              </td>
              <td>
                <xsl:value-of select="Grade"/>
              </td>
            </tr>
          </xsl:for-each>
        </table>

        <!--Hobbies & Intrests-->
        <table border="1">
          <tr bgcolor="#9acd32">
            <th align="left">Hobby</th>
          </tr>
          <xsl:for-each select="CV/Hobbies">
            <tr>
              <td>
                <xsl:value-of select="Name"/>
              </td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>

  </xsl:template>
</xsl:stylesheet>
