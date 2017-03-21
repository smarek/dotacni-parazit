#!/bin/bash

: ${1?"Usage: check_xslt_namespaces.sh <XSLT> <RDF>"}
: ${2?"Usage: check_xslt_namespaces.sh <XSLT> <RDF>"}

echo "XSLT: $1"
echo "RDF: $2"

echo "$(diff <(namespaces.sh $2) <(xslt_namespaces.sh $1))"
