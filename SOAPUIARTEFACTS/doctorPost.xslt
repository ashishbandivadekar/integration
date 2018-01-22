<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" >
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:param name="input"/>
	<xsl:template match="/">
		<doctors>
			<xsl:for-each select="/doctors/doctor">
				<doctor>
					<id>
						<xsl:value-of select="id"/>
					</id>
					<name>
						<xsl:value-of select="name"/>
					</name>
					<hospital>
						<xsl:value-of select="hospital"/>
					</hospital>
					<category>
						<xsl:value-of select="category"/>
					</category>
					<availability>
						<xsl:value-of select="availability"/>
					</availability>
					<fee>
						<xsl:value-of select="fee"/>
					</fee>
				</doctor>
			</xsl:for-each>
			<xsl:copy-of select="$input"/>
		</doctors>
	</xsl:template>
	<!--xsl:template match="@*|node()">
		<xsl:copy>
			<xsl:apply-templates select="@*|node()"/>
		</xsl:copy>
	</xsl:template-->
</xsl:stylesheet>
