\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{classfiles/eprint}[IACR ePrint document class.]

\LoadClass{llncs}

\def\pageMarginSize{1.1in}
\usepackage[margin=\pageMarginSize]{geometry} 
\pagestyle{plain}

\usepackage[T1]{fontenc}

\usepackage{url}
\usepackage[
    bookmarksdepth=2,
    colorlinks=true,
    linkcolor=blue,
    urlcolor=blue,
    citecolor=blue,
    pdfauthor={Anonymous}
    pagebackref,
    linktocpage=true,
]{hyperref}

\usepackage{xcolor}

\setlength\parindent{16pt}

%% Table of contents package and settings
\usepackage[titles]{tocloft}
\setlength\cftbeforesecskip{8pt}
\setcounter{tocdepth}{2}
\makeatletter
\renewcommand*\l@author[2]{}
\renewcommand*\l@title[2]{}
\makeatletter
\usepackage{etoolbox}
\patchcmd{\tableofcontents}{\@starttoc}{\vspace{-2.5\baselineskip}\@starttoc}{}{}
\renewcommand{\contentsname}{\raggedright Contents}
\renewcommand{\cftsecfont}{\normalfont\bfseries}% titles in bold
\renewcommand{\cftsecpagefont}{\normalfont\bfseries}% page numbers in bold
\renewcommand{\cftdotsep}{1}
\renewcommand{\cftsecleader}{\bfseries\cftdotfill{\cftsecdotsep}}% dot leaders in bold

\let\oldtableofcontents\tableofcontents
\renewcommand{\tableofcontents}{{\hypersetup{linkcolor=black}\small \oldtableofcontents}\clearpage}

% Appendix settings
\let\oldappendix\appendix
\renewcommand{\appendix}{\newpage\oldappendix}

% Bibliography styling
\bibliographystyle{alphaurl}