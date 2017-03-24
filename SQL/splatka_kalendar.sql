CREATE TABLE `splatka_kalendar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `about` varchar(150) COLLATE utf8_bin NOT NULL,
  `castkaSplatkaPlanovana` decimal(10,2) DEFAULT NULL,
  `castkaSplatkaSkutecna` decimal(10,2) NOT NULL,
  `uroceniIndikator` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `zaznamAktualizaceDatumCas` datetime DEFAULT NULL,
  `zaznamIdentifikator` varchar(50) COLLATE utf8_bin NOT NULL,
  `modified` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `about` (`about`),
  UNIQUE KEY `zaznamIdentifikator` (`zaznamIdentifikator`),
  KEY `zaznamAktualizaceDatumCas` (`zaznamAktualizaceDatumCas`),
  KEY `uroceniIndikator` (`uroceniIndikator`),
  KEY `castkaSplatkaSkutecna` (`castkaSplatkaSkutecna`),
  KEY `castkaSplatkaPlanovana` (`castkaSplatkaPlanovana`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COLLATE=utf8_bin
