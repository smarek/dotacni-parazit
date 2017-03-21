#!/usr/bin/env python3

from lxml import etree
import sys
import re

if len(sys.argv) < 5:
  sys.exit('Usage: rdf_to_xml.py <xslt> <rdf> <output-xml> <namespace>')

print("xslt %s" % (sys.argv[1]))
print("rdf  %s" % (sys.argv[2]))
print("xml  %s" % (sys.argv[3]))
print("namespace %s" % (sys.argv[4]))

_xslt = etree.parse(sys.argv[1])
_dom = etree.iterparse(sys.argv[2])
transform = etree.XSLT(_xslt)
results = open(sys.argv[3],'w+b')

for elem in _dom:
    if (elem[1].tag.endswith(sys.argv[4])):
        newElem = transform(elem[1])
        #print(etree.tostring(newElem,xml_declaration = False))
        try:
            results.write(etree.tostring(newElem,xml_declaration = False,encoding = 'utf8'))
            results.write(b'\n')
        except TypeError as err:
            print("skipped element %s" % (elem[1].tag))
            print("error: ", err)
