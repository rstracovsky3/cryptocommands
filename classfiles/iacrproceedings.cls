\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{classfiles/iacrproceedings}[IACR submission document class.]

\LoadClass[runningheads]{llncs}

\def\pageMarginSize{1.1in}
\usepackage[pass]{geometry}

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

%% Disable table of contents
\renewcommand{\tableofcontents}{}

% Appendix settings
\def\appendix{\end{document}} % Disables appendices by ending document at appendix command

% Bibliography settings
\bibliographystyle{llncs/splncs04}