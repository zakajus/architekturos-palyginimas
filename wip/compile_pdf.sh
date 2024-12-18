#!/bin/bash

INPUT_FILE="./juodrastis_rislus.md"
OUTPUT_FILE="./68000_Z8000.pdf"
HEADER_FILE="./header.tex"
PDF_ENGINE="tectonic"


pandoc --pdf-engine=$PDF_ENGINE --include-in-header="$HEADER_FILE" -s "$INPUT_FILE" -o "$OUTPUT_FILE"

echo "Completed: $OUTPUT_FILE"
