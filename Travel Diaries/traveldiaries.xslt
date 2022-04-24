<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">

		<html>
			<head>
				<link rel="stylesheet" href="traveldiaries.css"></link>
			</head>
			<body>
				<h2>Travel Diaries</h2>
				<table border="1">
					<tr bgcolor="#9acd32">
						<th align="left">Date</th>
						<th align="left">Title</th>
						<th align="left">Location</th>
						<th align="left">Author</th>
						<th align="left">Account</th>
						<th align="left">Description</th>
						<th align="left">Image</th>
					</tr>
					<xsl:for-each select="Diary/Entry">

            <xsl:sort select="Location" order="ascending" data-type="text"/>
						<tr>
							<td>
								<xsl:value-of select="Date"/>
							</td>
							<td>
								<xsl:value-of select="Title"/>
							</td>
							<td>
								<xsl:value-of select="Location"/>
							</td>
							<td>
								<xsl:value-of select="Author"/>
							</td>
							<td>
								<xsl:value-of select="Account"/>
							</td>
							<td>
								<xsl:value-of select="Descripton"/>
							</td>
							<td>
								<img width="200px">
									<xsl:attribute name="src">
										<xsl:value-of select="Image"/>
										</xsl:attribute>
								</img>
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
    </xsl:template>
</xsl:stylesheet>
