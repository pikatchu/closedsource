#!/bin/bash

rm -Rf all

cp -R _posts all/

(cd all && echo "To my wonderful wife, Angélica, for your unwavering love, patience, and support." > 0000-dedication.md)

(cd all && for i in *.md; do sed -i 's/\/assets/.\/assets/g' $i; done)

(cd all && 
     for i in *.md; do 
         cat $i | tr '\n' '^' | sed 's/---^title:\([^\^]*\)^layout:[^\^]*^order:[^\^]*^---/# \1/g' | tr '^' '\n' > /tmp/txt;
         mv /tmp/txt $i
     done)


# /home/julienv/closedsourcebook/assets/fonts/eb-garamond-v9-latin-regular.ttf

pandoc -o CLOSED_SOURCE.pdf \
   --pdf-engine=xelatex \
   -f gfm \
   --css=ebook_style.css \
   -V papersize:a5 \
   --epub-cover-image=./assets/images/epub_cover.jpg \
   all/*.md

ebook-convert CLOSED_SOURCE.epub CLOSED_SOURCE.pdf --paper-size a5
