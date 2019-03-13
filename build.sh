#!/usr/bin/env bash
function error_trap()
{
    printf 'Error on line %s.\n' "$1";
    exit 1;
}

trap 'error_trap $LINENO' ERR;
set -o pipefail -eu;

jobname=zach_hoffman_resume;
pdflatex "$jobname".tex;
pdftoppm -png -r 600 "$jobname".pdf > resume_preview.png;
