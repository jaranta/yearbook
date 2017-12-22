.SUFFIXES: .md .docx

.docx.md:	metadata-template.yaml
	pandoc \
	-f docx \
	-t markdown \
	--normalize \
	--atx-headers \
	--base-header-level=2 \
	--wrap=none \
	--id-prefix=$* \
	--extract-media= \
	-H metadata-template.yaml \
	$< \
	-o $*.md