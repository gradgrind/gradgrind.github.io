#!/bin/bash

read -p "File path (without 'docs' and '.md'): " fp
mkdir -p pdf/$(dirname "$fp")

this=$(pwd)
cd $(dirname "docs/$fp")
fname=$(basename "$fp")

#pandoc -s -V lang=de -V pagestyle=empty -f markdown -o "$this/pdf/$fp.tex" "$this/docs/$fp.md"

#pandoc -s -V lang=de -V papersize=A4 -V fontsize=12pt -V geometry:"left=2cm,right=2cm,top=2.4cm,bottom=1.4cm" -H "$this/misc/header.tex" -f markdown -o "$this/pdf/$fp.tex" "$this/docs/$fp.md"

#exit 0

#pandoc -V lang=de -V pagestyle=empty -f markdown -t latex -o "$this/pdf/$fp.pdf" "$this/docs/$fp.md"

#pandoc --template=$this/misc/template.tex -V lang=de -V pagestyle=empty -f markdown --pdf-engine=xelatex -o "$this/pdf/$fp.pdf" "$this/docs/$fp.md"

#pandoc -V lang=de -V papersize="A4" -V fontsize="12pt" -V geometry="margin=2cm" -V pagestyle=empty -f markdown --pdf-engine=xelatex -o "$this/pdf/$fp.pdf" "$this/docs/$fp.md"

pandoc -V lang=de -V papersize=A4 -V fontsize=12pt -V geometry:"left=2cm,right=2cm,top=2.4cm,bottom=1.4cm" -H "$this/misc/header.tex" -f markdown --pdf-engine=xelatex --filter="$this/misc/filter.py" -o "$this/pdf/$fp.pdf" "$this/docs/$fp.md"


##### A problem with Context is that it can't deal with some maths constructs! This is a pity because
##### it deals with svg graphics transparently! However, I suspect pandoc may be using Context Mark II.

# For options see https://pandoc.org/MANUAL.html#variables-for-context
# Consider this:
### create a new file preamble.tex with the content
###
### \setuppagenumbering[location=]
###
### And then run pandoc with
###
### pandoc -t context --include-in-header=preamble.tex -o sample.pdf sample.md

# For layout see https://wiki.contextgarden.net/Layout
# For pagenumbering see https://wiki.contextgarden.net/Command/setuppagenumbering
# No page numbers: "location="
# Headers/footers: https://wiki.contextgarden.net/Headers_and_Footers

#pandoc -V lang=de -V pagenumbering="location={footer,middle}" -V fontsize=12pt -V footertext="\em $fname] [] [\em $fname] [" -V layout="backspace=20mm,width=170mm,topspace=15mm,header=0mm,footer=10mm,footerdistance=0mm,height=270mm" -f markdown -t context -o "$this/pdf/$fp.tex" "$this/docs/$fp.md"

#pandoc -V lang=de -V pagenumbering="location={footer,middle}" -V fontsize=12pt -V footertext="\em $fname] [] [\em $fname] [" -V layout="backspace=20mm,width=170mm,topspace=15mm,header=0mm,footer=10mm,footerdistance=0mm,height=270mm" -f markdown -t context -o "$this/pdf/$fp.pdf" "$this/docs/$fp.md"

