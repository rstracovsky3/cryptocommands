\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{classfiles/usenixsubmission}[Usenix submission document class.]

\LoadClass[letterpaper,twocolumn,10pt]{article}
\usepackage{classfiles/helper-usenix/usenix2019}

%% Disable table of contents
\renewcommand{\tableofcontents}{}

% Disable date and author
\let\olddate\date
\let\oldauthor\author
\renewcommand{\date}[1]{\olddate{}}
\renewcommand{\author}[1]{\oldauthor{}}

% Reformat title
\let\oldtitle\title
\renewcommand{\title}[1]{\oldtitle{\Large \bf #1}}

% Disable unnecessary commands from llncs
\newcommand{\titlerunning}[1]{}
\newcommand{\institute}[1]{}
\newcommand{\authorrunning}[1]{}

% Bibliography settings
\bibliographystyle{plain}