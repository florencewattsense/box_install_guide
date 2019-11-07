OUTDIR=output

LANGS=fr en
OUTFILES=$(foreach l,$(LANGS),$(OUTDIR)/guide_$(l).ext)

all: html docbook pdf
html: $(OUTFILES:.ext=.html)
docbook: $(OUTFILES:.ext=.xml)
pdf: $(OUTFILES:.ext=.pdf)

$(OUTDIR)/guide_%.html: guide_%.adoc
	asciidoctor $< -D $(OUTDIR)

$(OUTDIR)/guide_%.xml: guide_%.adoc
	asciidoctor -b docbook5 $< -D $(OUTDIR)

$(OUTDIR)/guide_%.pdf: $(OUTDIR)/guide_%.xml
	dblatex --pdf $< -O $(OUTDIR)

.PHONY: all
