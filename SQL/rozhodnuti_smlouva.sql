CREATE TABLE `rozhodnuti_smlouva` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `about` varchar(150) COLLATE utf8_bin NOT NULL,
  `cisloJednaciRozhodnuti` varchar(100) COLLATE utf8_bin NOT NULL,
  `dokumentDruhKod` int(11) NOT NULL,
  `rozhodnutiDatum` datetime NOT NULL,
  `zaznamAktualizaceDatumCas` datetime NOT NULL,
  `zaznamIdentifikator` varchar(50) COLLATE utf8_bin NOT NULL,
  `title` varchar(150) COLLATE utf8_bin NOT NULL,
  `modified` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `about` (`about`),
  UNIQUE KEY `zaznamIdentifikator` (`zaznamIdentifikator`),
  KEY `cisloJednaciRozhodnuti` (`cisloJednaciRozhodnuti`),
  KEY `dokumentDruhKod` (`dokumentDruhKod`),
  KEY `rozhodnutiDatum` (`rozhodnutiDatum`),
  KEY `zaznamAktualizaceDatumCas` (`zaznamAktualizaceDatumCas`),
  KEY `title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COLLATE=utf8_bin
