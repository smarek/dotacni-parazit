#!/bin/bash

date

toXml() {
  echo $1 | sed 's/n3$/rdf/gi' | sed 's/N3/RDF/g'
}

rapp() {
  echo "from: " $1 " to: " $2
  echo "" > $2
  date

rapper \
 -f 'xmlns:ns1="http://cedropendata.mfcr.cz/c3lod/isdp/vocabIsdp/space/v1#"' \
 -f 'xmlns:ns2="http://cedropendata.mfcr.cz/c3lod/csu/vocabCSU#"' \
 -f 'xmlns:ns3="http://www.w3.org/2004/02/skos/core#"' \
 -f 'xmlns:ns4="http://cedropendata.mfcr.cz/c3lod/isdp/vocabIsdp/dataElements/v1#"' \
 -f 'xmlns:ns5="http://purl.org/dc/terms/"' \
 -f 'xmlns:ns6="http://cedropendata.mfcr.cz/c3lod/isdp/vocabIsdp/fkis/v1#"' \
 -f 'xmlns:ns7="http://cedropendata.mfcr.cz/c3lod/cedr/vocabCEDR#"' \
 -f 'xmlns:ns8="http://cedropendata.mfcr.cz/c3lod/ruian/vocabRUIAN#"' \
 -f 'xmlns:ns9="http://cedropendata.mfcr.cz/c3lod/isdp/vocabIsdp/business/v2#"' \
 -f 'xmlns:ns10="http://cedropendata.mfcr.cz/c3lod/isdp/vocabIsdp/person/v2#"' \
 -f 'xmlns:ns11="http://cedropendata.mfcr.cz/c3lod/rob/vocabROB#"' \
 -f 'xmlns:ns12="http://purl.org/goodrelations/v1#"' \
 -f 'xmlns:ns13="http://xmlns.com/foaf/0.1/"' \
 -f 'xmlns:ns14="http://cedropendata.mfcr.cz/c3lod/isdp/vocabIsdp/common/v1#"' \
 -f 'xmlns:ns15="http://cedropendata.mfcr.cz/c3lod/mmr/vocabMMR#"' \
 -f 'xmlns:ns16="http://cedropendata.mfcr.cz/c3lod/edssmvs/vocabEDSSMVS#"' \
 -f 'xmlns:ns17="http://cedropendata.mfcr.cz/c3lod/ares/vocabARES#"' \
 -f 'xmlns:ns18="http://www.w3.org/2002/07/owl#"' \
 -f 'xmlns:ns19="http://cedropendata.mfcr.cz/c3lod/szcr/vocabSZCR#"' \
 -i ntriples \
 -o rdfxml-abbrev \
 $1 > $2

  date
}

for f in $@
do
  TARGET=$(toXml $f)
  rapp $f $TARGET
done

exit 0

echo "" > $2
