This folder contains the necessary files to turn docx files to markdown files and further into html-, epub- and pdf files for ebook publishing. It makes a lot of assumptions about the files and their formats, so changing anything might break it. You have been warned.

It makes at least the following assumptions:

* You are building the books in Linux, and have both make and pandoc installed. The Makefile relies on build-epub.sh, so the files will not build on other platforms
* The source files are markdown-formatted, are in the source folder and end in .md
* The source files are ordered by numbering them 01-name.md 02-name.md and so on
* The source files contain a YAML-section with author and title info
* Other metadata is in a file called metadata.yaml
* The cover picture is a file called cover.jpg and is in source/img/
* The book is bilingual: just omit the -fi ending variables if you don't want them

You can turn properly formatted docx-files into markdown-source files by placing them in the source/docx folder and using Make, for example `make 00-introduction.md` when there is a file called `00-introduction.docx` in the folder.
