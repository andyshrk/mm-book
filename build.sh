#!/bin/bash
set -e; set -o pipefail

# Generate PDF of book.
function generate()
{
	pdflatex -shell-escape book.tex
}

# Run twice to generate dynamic data like ToC.
generate
biber book
makeindex book
generate
generate
