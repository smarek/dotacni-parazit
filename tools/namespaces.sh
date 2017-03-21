#!/bin/bash

#echo "Namespaces in: " $1
echo "$(grep \<ns $1 | awk '{print $1}' | awk -F '>' '{print $1}' | tr -d '<' | sort | uniq)"
