LANGS=fr en
OUTFILES=$(foreach l,$(LANGS),guide_$(l).ext)

all: html docbook pdf
html: $(OUTFILES:.ext=.html)
docbook: $(OUTFILES:.ext=.xml)
pdf: $(OUTFILES:.ext=.pdf)

guide_%.html: guide_%.adoc
	asciidoctor $<

guide_%.xml: guide_%.adoc
	asciidoctor -b docbook5 $<

guide_%.pdf: guide_%.xml
	dblatex --pdf $<

#.PHONY: all
