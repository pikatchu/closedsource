#!/bin/bash

rm -Rf all

cp -R _posts all/

(cd all && for i in *.md; do sed -i 's/\/assets/.\/assets/g' $i; done)

(cd all && 
     for i in *.md; do 
         cat $i | tr '\n' '^' | sed 's/---^title:\([^\^]*\)^layout:[^\^]*^order:[^\^]*^---/# \1/g' | tr '^' '\n' > /tmp/txt;
         mv /tmp/txt $i
     done)


pandoc -o CLOSED_SOURCE.epub -f gfm -t epub --metadata title="CLOSED SOURCE" --metadata subtitle="The Tale of the Companions" all/*.md
