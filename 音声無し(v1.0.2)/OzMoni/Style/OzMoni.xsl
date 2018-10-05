<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text" />

<xsl:template match="/">
	<xsl:apply-templates select="mulka/export"/>
</xsl:template>

<xsl:template match="export">
	<mulka version="2.00" type="application/mulka+xml">
        <xsl:apply-templates select="/mulka/export/competitors/competitor[@object-id=$param-competitor]"/>
	</mulka>
</xsl:template>

<xsl:template match="competitor">
        <xsl:variable name="competitor-id"><xsl:value-of select="@object-id" /></xsl:variable>
        <xsl:value-of select="/mulka/export/event/name" />,<xsl:value-of select="/mulka/export/classes/class[@object-id=$param-class]/name" />,<xsl:value-of select="club" />,<xsl:value-of select="name" />,<xsl:value-of select="result" />
</xsl:template>
</xsl:stylesheet>