#!/bin/bash

#pandoc sparkInstallation.md -f markdown -t html -s -o test1.html

for file in *.md; 
do 
    fileName="$(cut -d'.' -f1 <<<$file)"
    echo "pandoc $file -f markdown -t html --metadata title=$fileName -s -o $fileName.html"
    pandoc $file -f markdown -t html --metadata title=$fileName -s -o $fileName.html
    echo "Processing $f file.."; 
done
