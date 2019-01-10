#!/bin/bash
cd ~/workspace/elastic-stack/
cd stack-download
# Explode tarballs and zip files
for file in *.tar.gz; do tar xvfz $file; done;
for file in *.zip;  do unzip $file; done;

