<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"

			      xmlns:ns1="http://cedropendata.mfcr.cz/c3lod/isdp/vocabIsdp/space/v1#"
			      xmlns:ns2="http://cedropendata.mfcr.cz/c3lod/csu/vocabCSU#"
			      xmlns:ns3="http://www.w3.org/2004/02/skos/core#"
			      xmlns:ns4="http://cedropendata.mfcr.cz/c3lod/isdp/vocabIsdp/dataElements/v1#"
			      xmlns:ns5="http://purl.org/dc/terms/"
			      xmlns:ns6="http://cedropendata.mfcr.cz/c3lod/isdp/vocabIsdp/fkis/v1#"
			      xmlns:ns7="http://cedropendata.mfcr.cz/c3lod/cedr/vocabCEDR#"
			      xmlns:ns8="http://cedropendata.mfcr.cz/c3lod/ruian/vocabRUIAN#"
			      xmlns:ns9="http://cedropendata.mfcr.cz/c3lod/isdp/vocabIsdp/business/v2#"
			      xmlns:ns10="http://cedropendata.mfcr.cz/c3lod/isdp/vocabIsdp/person/v2#"
			      xmlns:ns11="http://cedropendata.mfcr.cz/c3lod/rob/vocabROB#"
			      xmlns:ns12="http://purl.org/goodrelations/v1#"
			      xmlns:ns13="http://xmlns.com/foaf/0.1/"
			      xmlns:ns14="http://cedropendata.mfcr.cz/c3lod/isdp/vocabIsdp/common/v1#"
			      xmlns:ns15="http://cedropendata.mfcr.cz/c3lod/mmr/vocabMMR#"
			      xmlns:ns16="http://cedropendata.mfcr.cz/c3lod/edssmvs/vocabEDSSMVS#"
			      xmlns:ns17="http://cedropendata.mfcr.cz/c3lod/ares/vocabARES#"
			      xmlns:ns18="http://www.w3.org/2002/07/owl#"
			      xmlns:ns19="http://cedropendata.mfcr.cz/c3lod/szcr/vocabSZCR#"
			      xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"

                              exclude-result-prefixes="ns1 ns2 ns3 ns4 ns5 ns6 ns7 ns8 ns9 ns10 ns11 ns12 ns13 ns14 ns15 ns16 ns17 ns18 ns19 rdf">

<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>

<!-- PARSING NEEDED CONTENT -->
<xsl:template match="ns7:RozhodnutiSmlouva">
    <RozhodnutiSmlouva>
	<xsl:attribute name="about">
		<xsl:value-of select="@rdf:about"/>
	</xsl:attribute>
	<xsl:attribute name="cisloJednaciRozhodnuti">
		<xsl:value-of select="ns7:cisloJednaciRozhodnuti"/>
	</xsl:attribute>
	<xsl:attribute name="dokumentDruhKod">
		<xsl:value-of select="ns7:dokumentDruhKod"/>
	</xsl:attribute>
	<xsl:attribute name="rozhodnutiDatum">
		<xsl:value-of select="ns7:rozhodnutiDatum"/>
	</xsl:attribute>
	<xsl:attribute name="zaznamAktualizaceDatumCas">
		<xsl:value-of select="ns7:zaznamAktualizaceDatumCas"/>
	</xsl:attribute>
	<xsl:attribute name="zaznamIdentifikator">
		<xsl:value-of select="ns7:zaznamIdentifikator"/>
	</xsl:attribute>
	<xsl:attribute name="title">
		<xsl:value-of select="ns5:title"/>
	</xsl:attribute>
    </RozhodnutiSmlouva>
</xsl:template>

<!-- REMOVE UNNEEDED NODES -->
<!-- <xsl:template match=""/> -->

</xsl:stylesheet>
