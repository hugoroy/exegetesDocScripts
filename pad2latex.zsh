#!/bin/zsh

# FIXME : make get-pad work, make PADNUMBER and DOCUMENT-TITLE into variables

# Get pad
#./get-pad/get-pad.pl --options \
#    && \ # Run pandoc

    pandoc -f markdown INPUT -t latex --self-contained -o OUTPUT.tex --filter pandoc-citeproc --filter ./filters/latex.zsh --filter ./filters/nettoyage.zsh --filter pandoc-latex-environment --template ./pandocincludes/exegetes.latex
