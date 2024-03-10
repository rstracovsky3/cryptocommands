\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{classfiles/iacrsubmission}[IACR submission document class.]

\LoadClass[runningheads]{llncs}

\def\pageMarginSize{1.1in}
\usepackage[pass]{geometry}

\usepackage[T1]{fontenc}
\pagestyle{plain} % disables running title and author

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

%% Disable table of contents
\renewcommand{\tableofcontents}{}

% Disable author and institute
\let\oldauthor\author
\let\oldinstitute\institute
\renewcommand{\author}[1]{\oldauthor{\vspace*{-2em}}}
\renewcommand{\institute}[1]{\oldinstitute{\vspace*{-3em}}}

% Appendix settings
\let\oldappendix\appendix
\renewcommand{\appendix}{\newpage\newgeometry{margin=\pageMarginSize}\section*{Beginning of Supplementary Material}\oldappendix}

% Bibliography settings
\bibliographystyle{llncs/splncs04}