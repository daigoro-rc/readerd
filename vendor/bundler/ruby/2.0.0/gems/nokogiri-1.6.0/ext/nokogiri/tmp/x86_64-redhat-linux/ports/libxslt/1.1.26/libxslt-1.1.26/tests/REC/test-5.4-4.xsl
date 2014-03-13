<xsl:stylesheet version="1.0"
      xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
      xmlns:fo="http://www.w3.org/1999/XSL/Format">
<xsl:template match="doc">
<doc>
    <xsl:apply-templates select="//employee"/>
</doc>
</xsl:template>

<xsl:template match="employee">
    <fo:block>
    Employee <xsl:apply-templates select="name"/> belongs to group
	<xsl:apply-templates select="ancestor::department/group"/>
    </fo:block>
</xsl:template>
<xsl:template match="group">
<xsl:apply-templates select="name"/>
</xsl:template>

</xsl:stylesheet>
