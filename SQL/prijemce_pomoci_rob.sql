CREATE TABLE `prijemce_pomoci_rob` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `about` varchar(255) COLLATE utf8_bin NOT NULL,
  `sameAsAres` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `sameAsRob` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `modified` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `about` (`about`),
  KEY `sameAsAresEkonomikaSubjekt` (`sameAsAres`),
  KEY `sameAsRobOsoba` (`sameAsRob`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COLLATE=utf8_bin
