CREATE TABLE `adresa_trvale_bydliste` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `about` varchar(100) COLLATE utf8_bin NOT NULL,
  `nachaziSeNaUzemiStatu` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `zaznamAktualizaceDatumCas` datetime DEFAULT NULL,
  `zaznamIdentifikator` varchar(40) COLLATE utf8_bin NOT NULL,
  `zaznamPlatnostDatum` datetime DEFAULT NULL,
  `obecKod` int(6) DEFAULT NULL,
  `obecNazev` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `obec` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `title` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `adresaKvalifikatorKod` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  `modified` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `about` (`about`),
  UNIQUE KEY `zaznamIdentifikator` (`zaznamIdentifikator`),
  KEY `zaznamAktualizaceDatumCas` (`zaznamAktualizaceDatumCas`),
  KEY `nachaziSeNaUzemiStatu` (`nachaziSeNaUzemiStatu`),
  KEY `zaznamPlatnostDatum` (`zaznamPlatnostDatum`),
  KEY `obecKod` (`obecKod`),
  KEY `obecNazev` (`obecNazev`),
  KEY `obec` (`obec`),
  KEY `title` (`title`),
  KEY `adresaKvalifikatorKod` (`adresaKvalifikatorKod`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COLLATE=utf8_bin
