#!/bin/bash

#echo "Namespaces in: " $1
echo "$(grep select\\=\"ns $1 | awk '{print $2}' | awk -F '=' '{print $2}' | sed 's/@rdf:resource//gi' | tr -d '"/\><' | sort | uniq)"
