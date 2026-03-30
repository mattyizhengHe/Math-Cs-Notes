\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mytufte-dark}[2024/05/20 Custom Tufte Handout Dark Class]

% Load the base class
\LoadClassWithOptions{tufte-handout}

\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{cleveref}
\crefname{Proposition}{Proposition}{Propositions}
\Crefname{Proposition}{Proposition}{Propositions}
\crefname{Theorem}{Theorem}{Theorems}
\Crefname{Theorem}{Theorem}{Theorems}
\crefname{Definition}{Definition}{Definitions}
\Crefname{Definition}{Definition}{Definitions}
\crefname{Corollary}{Corollary}{Corollaries}
\Crefname{Corollary}{Corollary}{Corollaries}
\crefname{Lemma}{Lemma}{Lemmas}
\Crefname{Lemma}{Lemma}{Lemmas}
\crefname{Example}{Example}{Examples}
\Crefname{Example}{Example}{Examples}
\RequirePackage{amsthm}

% Set up the images/graphics package
\RequirePackage{graphicx}
\setkeys{Gin}{width=\linewidth,totalheight=\textheight,keepaspectratio}
\graphicspath{{graphics/}}

\RequirePackage{booktabs}
\RequirePackage{units}
\RequirePackage{fancyvrb}
\fvset{fontsize=\normalsize}
\RequirePackage{multicol}
\RequirePackage{lipsum}

% Defines colors (Dark Mode / Invert 0.9 + Hue-Rotate 180)
\RequirePackage[dvipsnames,svgnames,x11names]{xcolor}

\definecolor{blue}{RGB}{156, 179, 212}
\definecolor{ltblue}{RGB}{73, 130, 153}
\definecolor{theb}{RGB}{47, 74, 96}

% Theorem backgrounds (Dark Mode)
\definecolor{ThmDefinition}{RGB}{43, 43, 59}     % Was Lavender
\definecolor{ThmTheorem}{RGB}{85, 65, 85}        % Was Thistle
\definecolor{ThmCorollary}{RGB}{85, 65, 85}      % Was Thistle
\definecolor{ThmProposition}{RGB}{75, 46, 19}    % Was PeachPuff
\definecolor{ThmLemma}{RGB}{85, 65, 85}          % Was Thistle
\definecolor{ThmExample}{RGB}{25, 25, 25}        % Was white
\definecolor{ThmExampleBorder}{RGB}{43, 43, 59}  % Was Lavender
\definecolor{ThmRemark}{RGB}{75, 46, 19}         % Was PeachPuff
\definecolor{SectionBox}{RGB}{119, 123, 235}     % Was Periwinkle

\RequirePackage{pagecolor}
\definecolor{bgcolor}{RGB}{25, 25, 25}
\definecolor{fgcolor}{RGB}{229, 229, 229}
\pagecolor{bgcolor}
\color{fgcolor}

% Document Setup
\RequirePackage{sectsty}
\RequirePackage[utf8]{inputenc}
\setcounter{secnumdepth}{3}
\renewcommand\thesection{\color{bgcolor}\arabic{section}}

% Title Styles
\makeatletter
  \renewcommand{\paragraph}{\@startsection{paragraph}%
    {4}{\z@}{-1ex \@plus -1ex \@minus -.3ex}%
    {0.5ex \@plus .2ex}{\normalfont\normalsize\bfseries\color{fgcolor}}}

  \renewcommand{\subsection}{\@startsection{subsection}%
    {3}{-1.8em}{-3ex \@plus -1ex \@minus -.2ex}%
    {1.5ex \@plus .2ex}
    {\hspace*{-5.5em}\fcolorbox{ltblue}{ltblue}{\parbox[c][1.0ex][b]{4em}{\phantom{space}}}
    \normalfont\large\itshape\color{ltblue}}}

  \renewcommand{\section}{\@startsection{section}%
    {3}{-1.01em}{-3ex \@plus -1ex \@minus -.2ex}%
    {1.5ex \@plus .2ex}
    {\hspace*{-5.5em}\fcolorbox{blue}{blue}{\parbox[c][1.0ex][b]{4em}{\phantom{space}}}
    \normalfont\Large\itshape\color{blue}}}
\makeatother

\newcommand{\mysectionfont}{\normalfont\Large\itshape\color{blue}}

\makeatletter
\renewcommand{\tableofcontents}{%
  \begin{fullwidth}
    {\mysectionfont \contentsname\par}
  \end{fullwidth}
  \@starttoc{toc}%
}
\makeatother

% Theorem Styles
\RequirePackage{thmtools}
\RequirePackage{transparent}

\declaretheorem[shaded={bgcolor=ThmDefinition, textwidth=30em}]{Definition}
\declaretheorem[shaded={bgcolor=ThmTheorem, textwidth=30em}]{Theorem}
\declaretheorem[shaded={bgcolor=ThmCorollary, textwidth=30em}]{Corollary}
\declaretheorem[shaded={bgcolor=ThmProposition, textwidth=30em}]{Proposition}
\declaretheorem[shaded={bgcolor=ThmLemma, textwidth=30em}]{Lemma}
\declaretheorem[shaded={rulecolor=ThmExampleBorder, rulewidth=2pt, bgcolor=ThmExample}]{Example-1}
\declaretheorem[thmbox=L]{boxtheorem L}
\declaretheorem[thmbox=M]{Example}
\declaretheorem[thmbox=S]{Formula}
\declaretheorem[thmbox=S]{Statement}

\declaretheoremstyle[
  shaded={bgcolor=ThmRemark, textwidth=22em},
  bodyfont=\normalfont
]{remarkstyle}
\declaretheorem[style=remarkstyle]{Remark}

\hypersetup{bookmarksdepth=3}

\endinput