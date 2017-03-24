CREATE TABLE `ekonomika_subjekt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `about` varchar(255) COLLATE utf8_bin NOT NULL,
  `ico` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `modified` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `about` (`about`),
  KEY `ico` (`ico`),
  KEY `title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COLLATE=utf8_bin
