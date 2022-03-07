#!/bin/bash
set -e; set -o pipefail

while inotifywait -e close_write -r book.tex chapters/; do
	./build.sh
done
