CREATE TABLE `etapa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `about` varchar(110) COLLATE utf8_bin NOT NULL,
  `etapaIdentifikator` varchar(10) COLLATE utf8_bin NOT NULL,
  `etapaNazev` varchar(150) COLLATE utf8_bin DEFAULT NULL,
  `poznamka` text COLLATE utf8_bin,
  `ukonceniPlanovaneDatum` datetime DEFAULT NULL,
  `ukonceniSkutecneDatum` datetime DEFAULT NULL,
  `zahajeniPlanovaneDatum` datetime DEFAULT NULL,
  `zahajeniSkutecneDatum` datetime DEFAULT NULL,
  `zaznamAktualizaceDatumCas` datetime DEFAULT NULL,
  `zaznamIdentifikator` varchar(50) COLLATE utf8_bin NOT NULL,
  `title` varchar(150) COLLATE utf8_bin DEFAULT NULL,
  `modified` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `about` (`about`),
  UNIQUE KEY `zaznamIdentifikator` (`zaznamIdentifikator`),
  KEY `etapaIdentifikator` (`etapaIdentifikator`),
  KEY `etapaNazev` (`etapaNazev`),
  KEY `ukonceniPlanovaneDatum` (`ukonceniPlanovaneDatum`),
  KEY `ukonceniSkutecneDatum` (`ukonceniSkutecneDatum`),
  KEY `zahajeniPlanovaneDatum` (`zahajeniPlanovaneDatum`),
  KEY `zahajeniSkutecneDatum` (`zahajeniSkutecneDatum`),
  KEY `zaznamAktualizaceDatumCas` (`zaznamAktualizaceDatumCas`),
  KEY `title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COLLATE=utf8_bin
