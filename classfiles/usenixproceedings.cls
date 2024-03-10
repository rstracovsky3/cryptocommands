\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{classfiles/usenixproceedings}[Usenix proceedings document class.]

\LoadClass[letterpaper,twocolumn,10pt]{article}
\usepackage{classfiles/helper-usenix/usenix2019}

%% Disable table of contents
\renewcommand{\tableofcontents}{}

% Disable date
\let\olddate\date
\renewcommand{\date}[1]{\olddate{}}

\let\oldauthor\author
\makeatletter
\def\institute#1{\gdef\@institute{#1}}
\renewcommand{\author}[1]{\oldauthor{#1 \\ \@institute}}
\makeatother

% Reformat title
\let\oldtitle\title
\renewcommand{\title}[1]{\oldtitle{\Large \bf #1}}

% Disable unnecessary commands from llncs
\newcommand{\titlerunning}[1]{}
\newcommand{\authorrunning}[1]{}

% Bibliography settings
\bibliographystyle{plain}