#!/bin/bash

: ${1?"Usage: check_xslt_namespaces.sh <XSLT1> <XSLT2> <...>"}

toRDF(){
  echo $1 | sed 's/\.xslt/\.rdf/' | sed 's/XSLT/RDF/'
}

check(){
  echo "XSLT: $1"
  echo "RDF: $2"

  echo "$(diff <(namespaces.sh $2) <(xslt_namespaces.sh $1))"
  echo "====================="
}

for f in $@
do
  TARGET=$(toRDF $f)
  check $f $TARGET
done

exit 0
