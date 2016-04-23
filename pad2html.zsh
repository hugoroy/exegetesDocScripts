#!/bin/zsh

# FIXME : make get-pad work, make PADNUMBER and DOCUMENT-TITLE into variables

# Get pad
#./get-pad/get-pad.pl --options \
#    && \ # Run pandoc

    pandoc -f markdown INPUT -t html5 --self-contained -o OUTPUT.html --filter pandoc-citeproc --filter ./filters/html.zsh --filter ./filters/nettoyage.zsh 
