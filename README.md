# Requirements

Install [asciidoc](http://asciidoc.org/INSTALL.html) and/or [asciidoctor](https://asciidoctor-docs.netlify.com/asciidoctor/1.5/setup/install-on-linux/)

For pdf generation, [dblatex](http://dblatex.sourceforge.net/) is required.

[asciidoctor-pdf](https://asciidoctor.org/docs/asciidoctor-pdf/#getting-started) may also be used but the default generated pdf is ugly.
It is advised to install it into the user directory with the below command.
```
gem install --user-install asciidoctor-pdf --pre
```

# How to use

Simply run one of the below commands depending on what format is desired
```
make html
make docbook
make pdf
```

# Manual generation

## Generate HTML

Using asciidoc:

```
asciidoc -b html5 guide.adoc
```

Using asciidoctor:
```
asciidoctor guide.adoc
```

## Generate pdf

Using asciidoctor-pdf
```
asciidoctor-pdf guide.adoc
```

Using asciidoctor and dblatex
```
asciidoctor -b docbook5 guide.adoc
dblatex --pdf guide.xml
```
