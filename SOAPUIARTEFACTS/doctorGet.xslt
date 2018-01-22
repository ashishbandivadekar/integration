<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:param name="inputId" />
	<xsl:template match="/">
		<doctors> 
		 
      <xsl:for-each select="/doctors/doctor">
         <xsl:call-template name="doctor">
           <xsl:with-param name="inputId1" select="string($inputId)"/>
           <xsl:with-param name="id" select="id"/>
           <xsl:with-param name="name" select="name"/>
           <xsl:with-param name="hospital" select="hospital"/>
           <xsl:with-param name="category" select="category"/>
           <xsl:with-param name="availability" select="availability"/>
           <xsl:with-param name="fee" select="fee"/>
         </xsl:call-template>
      </xsl:for-each>
		</doctors>
		
	</xsl:template>
	
	<!--xsl:template match="@*|node()">
		<xsl:copy>
			<xsl:apply-templates select="@*|node()"/>
		</xsl:copy>
	</xsl:template-->
	
	<xsl:template name="doctor">
	   <xsl:param name="inputId1"/>
	   <xsl:param name="id"/>
	   <xsl:param name="name"/>
	   <xsl:param name="hospital"/>
	   <xsl:param name="category"/>
	   <xsl:param name="availability"/>
	   <xsl:param name="fee"/>
	    
	   <xsl:if test="$id = $inputId1 or $inputId1 = 'ALL'" > 
	   <doctor>
		   <id><xsl:value-of select="$id"/></id>
		   <name><xsl:value-of select="$name"/></name>
		   <hospital><xsl:value-of select="$hospital"/></hospital>
			<category><xsl:value-of select="$category"/></category>
			<availability><xsl:value-of select="$availability"/></availability>
			<fee><xsl:value-of select="$fee"/></fee>
	   </doctor>
	</xsl:if>	
  </xsl:template>
	
</xsl:stylesheet>
