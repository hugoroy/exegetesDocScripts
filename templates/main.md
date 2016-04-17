---
documentclass: report
classoption: 12pt
lang: fr-fr
babel-lang: french
geometry: a4paper, margin=1in
header-includes:
  - \usecpackage[hyphens]{url}
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
  - \titleclass{\chapter}{top}
  - %\titleformat{\chapter}[display]{\huge\sffamily\bfseries}{}{0pt}{\thechapter. }
  - \renewcommand{\thechapter}{\Roman{chapter}}
  - \titleformat{\chapter}[display]{\centering\Large}{}{0pt}{%
  - \scshape\MakeLowercase\thechapter. \MakeLowercase}
  - \titleformat{name=\chapter,numberless}[display]{\centering\Large}{}{0pt}{%
  - \scshape\MakeLowercase}
  - \renewcommand{\thesection}{\arabic{section}}
  - \titleformat{\section}[hang]{\Large\bfseries}{}{0pt}{\thesection.~}
  - \titleformat{\subsection}[hang]{\large\bfseries}{}{0pt}{\thesubsection.~}
  - \titleformat{\subsubsection}[hang]{\bfseries}{}{0pt}{\thesubsubsection.~}
  - \parskip=6pt
euro: true
include-before:
  - \pagestyle{empty}
csl: pandocincludes/french-legal.csl
bibliography: pandocincludes/references.yaml
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

