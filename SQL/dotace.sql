CREATE TABLE `dotace` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `about` varchar(255) COLLATE utf8_bin NOT NULL,
  `byloRozhodnuto` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `podaniDatum` datetime DEFAULT NULL,
  `projektKod` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `smlouvaPodpisDatum` datetime DEFAULT NULL,
  `zaznamAktualizaceDatumCas` datetime DEFAULT NULL,
  `zaznamIdentifikator` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `zaznamPlatnostDatum` datetime DEFAULT NULL,
  `zmenaSmlouvaIdikator` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `projektIdentifikator` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `podprogram` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `operacniProgramCEDR` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `subjektRozliseniKod` int(11) DEFAULT NULL,
  `operacniProgramMMR` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `prioritaMMR` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `opatreniMMR` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `podOpatreni` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `grantoveSchemaMMR` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ukonceniSkutecneDatum` datetime DEFAULT NULL,
  `zahajeniSkutecneDatum` datetime DEFAULT NULL,
  `ukonceniPlanovaneDatum` datetime DEFAULT NULL,
  `clenenNaEtapu` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `realizovanNaUzemi` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `prioritaCEDR` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `projektNadrizenyIdentifikator` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `podOpatreniCEDR` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `opatreniCEDR` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `poznamkaCEDR` text COLLATE utf8_bin,
  `modified` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `about` (`about`),
  UNIQUE KEY `zaznamIdentifikator` (`zaznamIdentifikator`),
  KEY `opatreniCEDR` (`opatreniCEDR`),
  KEY `byloRozhodnuto` (`byloRozhodnuto`),
  KEY `podaniDatum` (`podaniDatum`),
  KEY `projektKod` (`projektKod`),
  KEY `smlouvaPodpisDatum` (`smlouvaPodpisDatum`),
  KEY `zaznamAktualizaceDatumCas` (`zaznamAktualizaceDatumCas`),
  KEY `zaznamPlatnostDatum` (`zaznamPlatnostDatum`),
  KEY `projektIdentifikator` (`projektIdentifikator`),
  KEY `title` (`title`),
  KEY `podprogram` (`podprogram`),
  KEY `operacniProgramCEDR` (`operacniProgramCEDR`),
  KEY `subjektRozliseniKod` (`subjektRozliseniKod`),
  KEY `operacniProgramMMR` (`operacniProgramMMR`),
  KEY `prioritaMMR` (`prioritaMMR`),
  KEY `opatreniMMR` (`opatreniMMR`),
  KEY `podOpatreni` (`podOpatreni`),
  KEY `grantoveSchemaMMR` (`grantoveSchemaMMR`),
  KEY `ukonceniSkutecneDatum` (`ukonceniSkutecneDatum`),
  KEY `zahajeniSkutecneDatum` (`zahajeniSkutecneDatum`),
  KEY `ukonceniPlanovaneDatum` (`ukonceniPlanovaneDatum`),
  KEY `clenenNaEtapu` (`clenenNaEtapu`),
  KEY `realizovanNaUzemi` (`realizovanNaUzemi`),
  KEY `prioritaCEDR` (`prioritaCEDR`),
  KEY `projektNadrizenyIdentifikator` (`projektNadrizenyIdentifikator`),
  KEY `podOpatreniCEDR` (`podOpatreniCEDR`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COLLATE=utf8_bin
