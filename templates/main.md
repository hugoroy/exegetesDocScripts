---
documentclass: report
classoption: 12pt, twoside
lang: fr-fr
babel-lang: french
mainlang: french
geometry: a4paper, margin=1in, left=1.5in, right=1.5in
header-includes:
  - \usepackage{titlesec,varioref,chngcntr}
  - \ifnum 0\ifxetex 1\fi\ifluatex 1\fi=0 
  - \DeclareUnicodeCharacter{00B0}{\textsuperscript{o}}
  - \DeclareUnicodeCharacter{20AC}{\euro}
  - \else 
  - \renewcommand{\labelitemi}{--}
  - \fi
  - \newenvironment{loi}{\begin{quote}\sffamily}{\end{quote}}
  - \newenvironment{parl}{\begin{quote}\itshape}{\end{quote}}
  - \newenvironment{jpref}{\sffamily\parindent 0pt \noindent}{}
  - \def\Llap{\ifhmode\ERROR\fi\strut\llap}
  - \setcounter{tocdepth}{2}
  - \setcounter{secnumdepth}{4}
  - \counterwithout{footnote}{chapter}
  - \input ../data/titleclass
  - \parskip=6pt
euro: true
include-before:
  - \pagestyle{plain}
csl: ../pandocincludes/french-legal.csl
bibliography: ../data/references.yaml
latex-environment:
  loi: [loi]
  parl: [parl]
  jpref: [jpref]
...

<!-- Page de garde LaTeX -->
\input garde.tex

\tableofcontents

# Table des jurisprudences {.unnumbered}

<div id="refs" class="jpref"></div>

# Faits

# Discussion

\clearpage

**Par ces motifs,** ...

