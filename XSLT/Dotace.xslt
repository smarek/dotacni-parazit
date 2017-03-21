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
<xsl:template match="ns7:Dotace">
    <Dotace>
	<xsl:attribute name="byloRozhodnuto">
		<xsl:value-of select="ns7:byloRozhodnuto/@rdf:resource"/>
	</xsl:attribute>
	<xsl:attribute name="podaniDatum">
		<xsl:value-of select="ns7:podaniDatum"/>
	</xsl:attribute>
	<xsl:attribute name="projektKod">
		<xsl:value-of select="ns7:projektKod"/>
	</xsl:attribute>
	<xsl:attribute name="projektNazev">
		<xsl:value-of select="ns6:projektNazev"/>
	</xsl:attribute>
	<xsl:attribute name="smlouvaPodpisDatum">
		<xsl:value-of select="ns7:smlouvaPodpisDatum"/>
	</xsl:attribute>
	<xsl:attribute name="zaznamAktualizaceDatumCas">
		<xsl:value-of select="ns7:zaznamAktualizaceDatumCas"/>
	</xsl:attribute>
	<xsl:attribute name="zaznamIdentifikator">
		<xsl:value-of select="ns7:zaznamIdentifikator"/>
	</xsl:attribute>
	<xsl:attribute name="zaznamPlatnostDatum">
		<xsl:value-of select="ns7:zaznamPlatnostDatum"/>
	</xsl:attribute>
	<xsl:attribute name="zmenaSmlouvaIndikator">
		<xsl:value-of select="ns7:zmenaSmlouvaIndikator"/>
	</xsl:attribute>
	<xsl:attribute name="projektIdentifikator">
		<xsl:value-of select="ns6:projektIdentifikator"/>
	</xsl:attribute>
	<xsl:attribute name="title">
		<xsl:value-of select="ns5:title"/>
	</xsl:attribute>
	<xsl:attribute name="about">
		<xsl:value-of select="@rdf:about"/>
	</xsl:attribute>
	<xsl:attribute name="podprogram">
		<xsl:value-of select="ns15:podprogram/@rdf:resource"/>
	</xsl:attribute>
	<xsl:attribute name="operacniProgramCEDR">
		<xsl:value-of select="ns7:operacniProgram/@rdf:resource"/>
	</xsl:attribute>
	<xsl:attribute name="subjektRozliseniKod">
		<xsl:value-of select="ns7:subjektRozliseniKod"/>
	</xsl:attribute>
	<xsl:attribute name="operacniProgramMMR">
		<xsl:value-of select="ns15:operacniProgram/@rdf:resource"/>
	</xsl:attribute>
	<xsl:attribute name="prioritaMMR">
		<xsl:value-of select="ns15:priorita/@rdf:resource"/>
	</xsl:attribute>
	<xsl:attribute name="opatreniMMR">
		<xsl:value-of select="ns15:opatreni/@rdf:resource"/>
	</xsl:attribute>
	<xsl:attribute name="podOpatreni">
		<xsl:value-of select="ns15:podOpatreni/@rdf:resource"/>
	</xsl:attribute>
	<xsl:attribute name="programEDSSMVS">
		<xsl:value-of select="ns16:program/@rdf:resource"/>
	</xsl:attribute>
	<xsl:attribute name="grantoveSchemaMMR">
		<xsl:value-of select="ns15:grantoveSchema/@rdf:resource"/>
	</xsl:attribute>
	<xsl:attribute name="smlouvaPodpisDatum">
		<xsl:value-of select="ns7:smlouvaPodpisDatum"/>
	</xsl:attribute>
	<xsl:attribute name="ukonceniSkutecneDatum">
		<xsl:value-of select="ns7:ukonceniSkutecneDatum"/>
	</xsl:attribute>
	<xsl:attribute name="zahajeniSkutecneDatum">
		<xsl:value-of select="ns7:zahajeniSkutecneDatum"/>
	</xsl:attribute>
	<xsl:attribute name="clenenNaEtapu">
		<xsl:value-of select="ns7:clenenNaEtapu/@rdf:resource"/>
	</xsl:attribute>
	<xsl:attribute name="realizovanNaUzemi">
		<xsl:value-of select="ns7:realizovanNaUzemi/@rdf:resource"/>
	</xsl:attribute>
	<xsl:attribute name="ukonceniPlanovaneDatum">
		<xsl:value-of select="ns7:ukonceniPlanovaneDatum"/>
	</xsl:attribute>
	<xsl:attribute name="zahajeniPlanovaneDatum">
		<xsl:value-of select="ns7:zahajeniPlanovaneDatum"/>
	</xsl:attribute>
	<xsl:attribute name="prioritaCEDR">
		<xsl:value-of select="ns7:priorita/@rdf:resource"/>
	</xsl:attribute>
	<xsl:attribute name="projektNadrizenyIdentifikator">
		<xsl:value-of select="ns7:projektNadrizenyIdentifikator"/>
	</xsl:attribute>
	<xsl:attribute name="podOpatreniCEDR">
		<xsl:value-of select="ns7:podOpatreni/@rdf:resource"/>
	</xsl:attribute>
	<xsl:attribute name="opatreniCEDR">
		<xsl:value-of select="ns7:opatreni/@rdf:resource"/>
	</xsl:attribute>
	<xsl:attribute name="poznamkaCEDR">
		<xsl:value-of select="ns7:poznamka"/>
	</xsl:attribute>
    </Dotace>
</xsl:template>

<!-- REMOVE UNNEEDED NODES -->
<!-- <xsl:template match=""/> -->

</xsl:stylesheet>
