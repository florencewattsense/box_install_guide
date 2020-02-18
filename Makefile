LANGS=fr en
OUTFILES=$(foreach l,$(LANGS),guide_$(l).ext)

all: html docbook pdf
html: $(OUTFILES:.ext=.html)
docbook: $(OUTFILES:.ext=.xml)
pdf: $(OUTFILES:.ext=.pdf)

IMAGES=images/*

guide_%.html: guide_%.adoc $(IMAGES)
	asciidoctor $<

guide_%.xml: guide_%.adoc $(IMAGES)
	asciidoctor -b docbook5 $<

guide_%.pdf: guide_%.xml dblatex.xsl
	dblatex --pdf -p dblatex.xsl $<

clean:
	rm *.html *.xml *.pdf

.PHONY: clean
