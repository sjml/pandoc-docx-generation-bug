#!/usr/bin/env bash

cd "$(dirname "$0")"

pandoc \
  --from markdown \
  --to docx \
  --reference-doc ./templates/working_template.docx \
  --output ./outputs/working_output.docx \
  content.md

pandoc \
  --from markdown \
  --to docx \
  --reference-doc ./templates/broken_template.docx \
  --output ./outputs/broken_output.docx \
  content.md

