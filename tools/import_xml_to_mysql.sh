#!/bin/bash

USER="root"
PASSWORD="itdsitds"
HOST="localhost"
DBNAME="cedr"

TRUNCATE_CMD_PRE="SET FOREIGN_KEY_CHECKS = 0"
TRUNCATE_CMD_POST="SET FOREIGN_KEY_CHECKS = 1"

mysql -u$USER -p$PASSWORD -h$HOST $DBNAME -Be "TRUNCATE ciselnik_podprogram_mmr_v01; LOAD XML LOCAL INFILE 'XML/ciselnikPodprogramMMRv01.xml' INTO TABLE ciselnik_podprogram_mmr_v01 CHARACTER SET UTF8 ROWS IDENTIFIED BY '<ciselnikPodprogramMMRv01>' SET id=NULL, modified=NOW();"
mysql -u$USER -p$PASSWORD -h$HOST $DBNAME -Be "TRUNCATE adresa_sidlo; LOAD XML LOCAL INFILE 'XML/AdresaSidlo.xml' INTO TABLE adresa_sidlo CHARACTER SET UTF8 ROWS IDENTIFIED BY '<AdresaSidlo>' SET id=NULL, modified=NOW();"
mysql -u$USER -p$PASSWORD -h$HOST $DBNAME -Be "TRUNCATE ekonomika_subjekt; LOAD XML LOCAL INFILE 'XML/EkonomikaSubjekt.xml' INTO TABLE ekonomika_subjekt CHARACTER SET UTF8 ROWS IDENTIFIED BY '<EkonomikaSubjekt>' SET id=NULL, modified=NOW();"
mysql -u$USER -p$PASSWORD -h$HOST $DBNAME -Be "TRUNCATE prijemce_pomoci_rob; LOAD XML LOCAL INFILE 'XML/PrijemcePomociRob.xml' INTO TABLE prijemce_pomoci_rob CHARACTER SET UTF8 ROWS IDENTIFIED BY '<PrijemcePomociRob>' SET id=NULL, modified=NOW();"
mysql -u$USER -p$PASSWORD -h$HOST $DBNAME -Be "TRUNCATE adresa_trvale_bydliste; LOAD XML LOCAL INFILE 'XML/AdresaTrvaleBydliste.xml' INTO TABLE adresa_trvale_bydliste CHARACTER SET UTF8 ROWS IDENTIFIED BY '<AdresaTrvaleBydliste>' SET id=NULL, modified=NOW();"
mysql -u$USER -p$PASSWORD -h$HOST $DBNAME -Be "$TRUNCATE_CMD_PRE; TRUNCATE rozhodnuti; LOAD XML LOCAL INFILE 'XML/Rozhodnuti.xml' INTO TABLE rozhodnuti CHARACTER SET UTF8 ROWS IDENTIFIED BY '<Rozhodnuti>' SET id=NULL, modified=NOW();"
mysql -u$USER -p$PASSWORD -h$HOST $DBNAME -Be "TRUNCATE rozhodnuti_smlouva; LOAD XML LOCAL INFILE 'XML/RozhodnutiSmlouva.xml' INTO TABLE rozhodnuti_smlouva CHARACTER SET UTF8 ROWS IDENTIFIED BY '<RozhodnutiSmlouva>' SET id=NULL, modified=NOW();"
mysql -u$USER -p$PASSWORD -h$HOST $DBNAME -Be "TRUNCATE etapa; LOAD XML LOCAL INFILE 'XML/Etapa.xml' INTO TABLE etapa CHARACTER SET UTF8 ROWS IDENTIFIED BY '<Etapa>' SET id=NULL, modified=NOW();"
mysql -u$USER -p$PASSWORD -h$HOST $DBNAME -Be "TRUNCATE fyzicka_osoba;LOAD XML LOCAL INFILE 'XML/FyzickaOsoba.xml' INTO TABLE fyzicka_osoba CHARACTER SET UTF8 ROWS IDENTIFIED BY '<FyzickaOsoba>' SET id=NULL, modified=NOW();"
mysql -u$USER -p$PASSWORD -h$HOST $DBNAME -Be "TRUNCATE fyzicka_osoba_podnikajici;LOAD XML LOCAL INFILE 'XML/FyzickaOsobaPodnikajici.xml' INTO TABLE fyzicka_osoba_podnikajici CHARACTER SET UTF8 ROWS IDENTIFIED BY '<FyzickaOsobaPodnikajici>' SET id=NULL, modified=NOW();"
mysql -u$USER -p$PASSWORD -h$HOST $DBNAME -Be "TRUNCATE rozpoctove_obdobi;LOAD XML LOCAL INFILE 'XML/RozpoctoveObdobi.xml' INTO TABLE rozpoctove_obdobi CHARACTER SET UTF8 ROWS IDENTIFIED BY '<RozpoctoveObdobi>' SET id=NULL, modified=NOW();"
mysql -u$USER -p$PASSWORD -h$HOST $DBNAME -Be "TRUNCATE osoba;LOAD XML LOCAL INFILE 'XML/Osoba.xml' INTO TABLE osoba CHARACTER SET UTF8 ROWS IDENTIFIED BY '<Osoba>' SET id=NULL, modified=NOW();"
mysql -u$USER -p$PASSWORD -h$HOST $DBNAME -Be "TRUNCATE splatka_kalendar;LOAD XML LOCAL INFILE 'XML/SplatkaKalendar.xml' INTO TABLE splatka_kalendar CHARACTER SET UTF8 ROWS IDENTIFIED BY '<SplatkaKalendar>' SET id=NULL, modified=NOW();"
mysql -u$USER -p$PASSWORD -h$HOST $DBNAME -Be "TRUNCATE cizinec_fo;LOAD XML LOCAL INFILE 'XML/CizinecFO.xml' INTO TABLE cizinec_fo CHARACTER SET UTF8 ROWS IDENTIFIED BY '<CizinecFO>' SET id=NULL, modified=NOW();"
mysql -u$USER -p$PASSWORD -h$HOST $DBNAME -Be "TRUNCATE cizinec_fop;LOAD XML LOCAL INFILE 'XML/CizinecFOP.xml' INTO TABLE cizinec_fop CHARACTER SET UTF8 ROWS IDENTIFIED BY '<CizinecFOP>' SET id=NULL, modified=NOW();"
mysql -u$USER -p$PASSWORD -h$HOST $DBNAME -Be "TRUNCATE cizinec_po;LOAD XML LOCAL INFILE 'XML/CizinecPO.xml' INTO TABLE cizinec_po CHARACTER SET UTF8 ROWS IDENTIFIED BY '<CizinecPO>' SET id=NULL, modified=NOW();"
mysql -u$USER -p$PASSWORD -h$HOST $DBNAME -Be "TRUNCATE pravnicka_osoba;LOAD XML LOCAL INFILE 'XML/PravnickaOsoba.xml' INTO TABLE pravnicka_osoba CHARACTER SET UTF8 ROWS IDENTIFIED BY '<PravnickaOsoba>' SET id=NULL, modified=NOW();"
mysql -u$USER -p$PASSWORD -h$HOST $DBNAME -Be "TRUNCATE prijemce_pomoci;LOAD XML LOCAL INFILE 'XML/PrijemcePomoci.xml' INTO TABLE prijemce_pomoci CHARACTER SET UTF8 ROWS IDENTIFIED BY '<PrijemcePomoci>' SET id=NULL, modified=NOW();"
mysql -u$USER -p$PASSWORD -h$HOST $DBNAME -Be "TRUNCATE prijemce_pomoci_ares;LOAD XML LOCAL INFILE 'XML/PrijemcePomociAres.xml' INTO TABLE prijemce_pomoci_ares CHARACTER SET UTF8 ROWS IDENTIFIED BY '<PrijemcePomociAres>' SET id=NULL, modified=NOW();"
mysql -u$USER -p$PASSWORD -h$HOST $DBNAME -Be "TRUNCATE uzemni_realizace;LOAD XML LOCAL INFILE 'XML/UzemniRealizace.xml' INTO TABLE uzemni_realizace CHARACTER SET UTF8 ROWS IDENTIFIED BY '<UzemniRealizace>' SET id=NULL, modified=NOW();"
mysql -u$USER -p$PASSWORD -h$HOST $DBNAME -Be "TRUNCATE ciselnik_dotace_poskytovatel_v01;LOAD XML LOCAL INFILE 'XML/ciselnikDotacePoskytovatelv01.xml' INTO TABLE ciselnik_dotace_poskytovatel_v01 CHARACTER SET UTF8 ROWS IDENTIFIED BY '<cDotacePoskytovatelV01>' SET id=NULL, modified=NOW();"
mysql -u$USER -p$PASSWORD -h$HOST $DBNAME -Be "TRUNCATE ciselnik_dotace_titul_paragraf_v01;LOAD XML LOCAL INFILE 'XML/ciselnikDotaceTitulParagrafv01.xml' INTO TABLE ciselnik_dotace_titul_paragraf_v01 CHARACTER SET UTF8 ROWS IDENTIFIED BY '<ciselnikDotaceTitulParagrafv01>' SET id=NULL, modified=NOW();"
mysql -u$USER -p$PASSWORD -h$HOST $DBNAME -Be "TRUNCATE dotace;LOAD XML LOCAL INFILE 'XML/Dotace.xml' INTO TABLE dotace CHARACTER SET UTF8 ROWS IDENTIFIED BY '<Dotace>' SET id=NULL, modified=NOW();"
mysql -u$USER -p$PASSWORD -h$HOST $DBNAME -Be "$TRUNCATE_CMD_POST"