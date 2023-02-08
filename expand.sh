#!/usr/bin/env bash

cd "$(dirname "$0")"

pushd templates
  rm -rf working_template broken_template
  unzip working_template.docx -d working_template
  unzip broken_template.docx -d broken_template
popd

pushd outputs
  rm -rf working_output broken_output
  unzip working_output.docx -d working_output
  unzip broken_output.docx -d broken_output
popd
