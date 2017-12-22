#!/bin/bash
printf "\n" > build/book.epub-template
for i in source/*.md
do 
  pandoc --from markdown --to markdown --template=templates/epub/epub-chapter.template --wrap=none --id-prefix="$i" $i >> build/book.epub-template
  printf "\n" >> build/book.epub-template
done
