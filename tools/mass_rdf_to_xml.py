#!/usr/bin/env python3

from lxml import etree
import sys
import re

def convert_rdf_to_xml(__xslt, __rdf, __xml, __namespace):
    _xslt = etree.parse(__xslt)
    _dom = etree.iterparse(__rdf)
    transform = etree.XSLT(_xslt)
    results = open(__xml,'w+b')

    for elem in _dom:
        if (elem[1].tag.endswith(__namespace)):
            newElem = transform(elem[1])
            #print(etree.tostring(newElem,xml_declaration = False))
            try:
                results.write(etree.tostring(newElem,xml_declaration = False,encoding = 'utf8'))
                results.write(b'\n')
            except TypeError as err:
                print("skipped element %s" % (elem[1].tag))
                print("error: ", err)

    print('SUCCESS %s' % (__xml))

print(sys.argv[1::])

for xslt in sys.argv[1::]:
    xslt_ns = open(xslt,'r').read()
    xslt_ns = re.compile('template\ match=\"(.*)\"\>').findall(xslt_ns)
    xslt_ns = xslt_ns[0]
    xslt_ns = xslt_ns.split(':')
    xslt_ns = xslt_ns[1]
    convert_rdf_to_xml(xslt, xslt.replace('XSLT','RDF').replace('.xslt','.rdf'), xslt.replace('XSLT','XML').replace('.xslt','.xml'), xslt_ns)
