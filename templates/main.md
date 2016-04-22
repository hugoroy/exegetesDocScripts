---
documentclass: report
classoption: 12pt
lang: fr-fr
babel-lang: french
mainlang: french
geometry: a4paper, margin=1in
header-includes:
  - \usepackage{titlesec,varioref}
  - \ifnum 0\ifxetex 1\fi\ifluatex 1\fi=0 
  - \DeclareUnicodeCharacter{00B0}{\textsuperscript{o}}
  - \DeclareUnicodeCharacter{20AC}{\euro}
  - \else 
  - \fi
  - \newenvironment{loi}{\begin{quote}\sffamily\itshape}{\end{quote}}
  - \newenvironment{parl}{\begin{quote}\itshape}{\end{quote}}
  - \def\Llap{\ifhmode\ERROR\fi\strut\llap}
  - \setcounter{tocdepth}{2}
  - \setcounter{secnumdepth}{4}
  - \input data/titleclass
  - \parskip=6pt
euro: true
include-before:
  - \pagestyle{plain}
csl: pandocincludes/french-legal.csl
bibliography: data/references.yaml
latex-environment:
  loi: [loi, law]
  parl: [parl]
...

<!-- Page de garde LaTeX -->
\input garde.tex

\tableofcontents

# Table des jurisprudences {.unnumbered}

<div id="refs"></div>

# Faits

# Discussion

\clearpage

**Par ces motifs,** ...

