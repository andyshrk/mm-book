#!/bin/bash
set -e; set -o pipefail

# Generate PDF of book.
function generate()
{
	pdflatex -shell-escape --interaction=batchmode book.tex
}

# Run twice to generate dynamic data like ToC.
generate
biber --quiet book
makeindex -q book
generate
generate
