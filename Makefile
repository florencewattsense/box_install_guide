IN_FILES=$(shell find . -name "*.adoc")

guide.html: $(IN_FILES)
	asciidoctor guide.adoc

guide.xml: $(IN_FILES)
	asciidoctor -b docbook5 guide.adoc

guide.pdf: guide.xml
	dblatex --pdf guide.xml

html: guide.html
docbook: guide.xml
pdf: guide.pdf
