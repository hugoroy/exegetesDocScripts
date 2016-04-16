#!/bin/zsh

# FIXME : make get-pad work, make PADNUMBER and DOCUMENT-TITLE into variables

# Get pad
#./get-pad/get-pad.pl --options \
#    && \ # Run pandoc' citation process 

    pandoc -f markdown PADNUMBER -t json --self-contained -o /tmp/PADNUMBER.json --filter pandoc-citeproc  \
        && \
    pandoc -f json /tmp/PADNUMBER.json -t json --self-contained -o /tmp/PADNUMBER.json.0 --filter ./filters/latex.zsh \
        && \
    pandoc -f json /tmp/PADNUMBER.json.0 -t json --self-contained -o /tmp/PADNUMBER.json.1 --filter ./filters/nettoyage.zsh \
        && \
    pandoc -f json /tmp/PADNUMBER.json.1 -t latex --self-contained -o DOCUMENT-TITLE.tex --filter ./filters/loi.py --template ./pandocincludes/exegetes.latex
