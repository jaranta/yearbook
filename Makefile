## All the source files
MD=$(wildcard source/*.md)
HTML=$(MD:.md=.html)
.SUFFIXES: .md .html

default:	all
all:	html epub
html:	$(HTML)

.md.html:
	pandoc \
	-t html5 \
	--template=templates/html5/html5.template \
	--smart \
	$< -o build/$(@F)

book.epub-template: templates/epub/epub-chapter.template $(MD)
	./build-epub.sh

epub: metadata.yaml book.epub-template templates/epub/epub.css templates/epub/epub.template
	pandoc \
	--self-contained \
	--smart \
	--template=templates/epub/epub.template \
	--epub-stylesheet=templates/epub/epub.css \
	--epub-chapter-level=1 \
	--toc \
	--toc-depth=1 \
	-o build/book.epub \
	metadata.yaml build/book.epub-template

clean:
	rm -rf build/*
