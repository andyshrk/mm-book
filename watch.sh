#!/bin/bash
set -e; set -o pipefail

# Do initial build.
./build.sh
# Now watch for file changes.
while inotifywait -e close_write -r book.tex biblio.bib chapters/ figures/; do
	./build.sh
done
