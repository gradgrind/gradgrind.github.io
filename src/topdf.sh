#!/bin/bash

read -p "File path (without 'docs' and '.md'): " fp
mkdir -p pdf/$(dirname "$fp")

pandoc --template=misc/template.tex -V lang=de -V pagestyle=empty -f markdown -t latex -o "pdf/$fp.pdf" "docs/$fp.md"