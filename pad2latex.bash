#!/bin/bash

# Pour compiler le pad 368 dans le dossier test : ./pad2latex.bash 368 test

pad=$1
dir=$2

if ! ./get-pad.pl -o $dir -r $pad; then
    echo Failed to get the pad $pad
    exit 1
fi

cd $dir && pandoc -f markdown $pad.txt -o $pad.tex -t latex --self-contained --filter pandoc-citeproc --filter ../filters/latex.zsh --filter ../filters/nettoyage.zsh --filter pandoc-latex-environment --template ../pandocincludes/exegetes.latex
