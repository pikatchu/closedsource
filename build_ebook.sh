#!/bin/bash

rm -Rf all

cp -R _posts all/

(cd all && for i in *.md; do sed -i 's/\/assets/.\/assets/g' $i; done)

(cd all && 
     for i in *.md; do 
         cat $i \
           | sed 's/<a href="\([^"]*\)">.*<\/a>/\1/g' \
           | sed 's/\(http.*html\)/\n\n```\1```/g' \
           | tr '\n' '^' \
           | sed 's/---^title:\([^\^]*\)^layout:[^\^]*^order:[^\^]*^---/# \1/g' \
           | tr '^' '\n' > /tmp/txt;
         mv /tmp/txt $i
     done)

# /home/julienv/closedsourcebook/assets/fonts/eb-garamond-v9-latin-regular.ttf
pandoc -o CLOSED_SOURCE_NO_COVER.pdf \
   -f gfm \
   --include-before-body=dedication.tex \
   -V papersize:a5 \
   -V mainfont="EB Garamond" \
   all/*.md

convert ./assets/images/epub_cover.jpg -density 300 cover.pdf

pdfunite cover.pdf CLOSED_SOURCE_NO_COVER.pdf CLOSED_SOURCE.pdf
