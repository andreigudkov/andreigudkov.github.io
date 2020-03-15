#!/usr/bin/env python3

import os
import sys
import datetime
import codecs
from lxml import etree

def gen_urllist(root, path=''):
  urls = []
  for name in os.listdir(root + '/' + path):
    fullpath = root + '/' + path + '/' + name
    if name[0] == '.':
      continue
    if os.path.isfile(fullpath) and name.endswith('.html') and name != 'index.html':
      urls.append({'url':'http://gudok.xyz'+path+'/'+name, 'mtime':os.path.getmtime(fullpath)})
    if os.path.isdir(fullpath):
      urls.append({'url':'http://gudok.xyz'+path+'/'+name+'/', 'mtime':os.path.getmtime(fullpath)})
    if os.path.isdir(fullpath):
      for item in gen_urllist(root, path + '/' + name):
        urls.append(item)
  return urls


xmlUrlset = etree.Element('urlset', {'xmlns':'http://www.sitemaps.org/schemas/sitemap/0.9'})
for item in gen_urllist('./'):
  xmlUrl = etree.Element('url')

  xmlLoc = etree.Element('loc')
  xmlLoc.text = item['url']
  xmlUrl.append(xmlLoc)

  xmlLastmod = etree.Element('lastmod')
  xmlLastmod.text = datetime.datetime.fromtimestamp(int(item['mtime'])).strftime('%Y-%m-%d')
  xmlUrl.append(xmlLastmod)

  xmlUrlset.append(xmlUrl)
  print(item['url'])




sitemap = etree.tostring(xmlUrlset, pretty_print=True, xml_declaration=True, encoding="UTF-8")
sitemap = str(sitemap, encoding='UTF-8')

f = codecs.open("sitemap.xml", "w", "utf-8-sig")
f.write(sitemap)
f.close()

