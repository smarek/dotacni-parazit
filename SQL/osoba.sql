CREATE TABLE `osoba` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `about` varchar(160) COLLATE utf8_bin NOT NULL,
  `jmeno` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `prijmeni` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `bydlisteObecKod` int(11) DEFAULT NULL,
  `narozeniRok` int(11) DEFAULT NULL,
  `title` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `modified` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `about` (`about`),
  KEY `jmeno` (`jmeno`),
  KEY `prijmeni` (`prijmeni`),
  KEY `bydlisteObecKod` (`bydlisteObecKod`),
  KEY `narozeniRok` (`narozeniRok`),
  KEY `title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COLLATE=utf8_bin
