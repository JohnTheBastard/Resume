% Intro Options
\ProvidesClass{jhearn-resume}[2018/01/31 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{
  \PassOptionsToClass{\CurrentOption}{article}%
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[hmargin=1.25cm, vmargin=0.7cm]{geometry}
\usepackage[usenames,dvipsnames]{xcolor}
\usepackage[hidelinks]{hyperref}
\usepackage{titlesec}
\usepackage[absolute]{textpos}
\usepackage[UKenglish]{babel}
\usepackage[UKenglish]{isodate}
\usepackage{fontspec,xltxtra,xunicode}

% Cite publications
\usepackage{cite}
\renewcommand\refname{\vskip -1.5cm}

% Color definitions
\definecolor{date}{HTML}{222222} 
\definecolor{primary}{HTML}{111111} 
\definecolor{headings}{HTML}{333333}
\definecolor{subheadings}{HTML}{222222}
\definecolor{blue1}{HTML}{00459a}

% Set main fonts
\defaultfontfeatures{Mapping=tex-text}
\setmainfont[Color=primary]{SF Hello Light}
\setsansfont[Scale=MatchLowercase,Mapping=tex-text]{SF Hello Thin}

% Date command
\setlength{\TPHorizModule}{1mm}
\setlength{\TPVertModule}{1mm}
\textblockorigin{0mm}{5mm} % start everyth
\newcommand{\lastupdated}{\begin{textblock}{60}(155,0)
\color{date}\fontspec{SF Hello Light}\fontsize{8pt}{10pt}\selectfont 
Last Updated on
\today
\end{textblock}}

\newcommand{\leftdetails}[1]{\begin{textblock}{60}(170,5)
\color{date}\fontspec{SF Hello Light}\fontsize{8pt}{10pt}\selectfont 
#1
\end{textblock}}

% Alt Fonts

% Name command
\newcommand{\namesection}[3]{
	\centering{
		\sffamily
		\fontspec{SF Hello Thin}\fontsize{40pt}{10cm}\selectfont #1 
		\fontspec{SF Hello Light}\selectfont #2
	} \\
	\vspace{5pt}
	\centering{ \color{headings}\fontspec{SF Hello Thin}\fontsize{11pt}{14pt}\selectfont #3}
	\noindent\makebox[\linewidth]{\rule{\paperwidth}{0.4pt}}
	\vspace{-15pt}
}
\titlespacing{\section}{0pt}{0pt}{0pt}

% Headings command
\titleformat{\section}{\color{headings}
\scshape\fontspec{SF Hello Medium}\fontsize{16pt}{24pt}\selectfont \raggedright}{} {0em}{}

% Subeadings command
\titleformat{\subsection}{\color{subheadings}
\fontspec{SF Hello Light}\fontsize{12pt}{12pt}\selectfont\bfseries}{}{0em}{}
\titlespacing{\subsection}{0pt}{\parskip}{-\parskip}
\titlespacing{\subsubsection}{0pt}{\parskip}{-\parskip}
\newcommand{\runsubsection}[1]{\color{subheadings}
\fontspec{SF Hello Light}\fontsize{12pt}{12pt}\selectfont\bfseries {#1} \normalfont}

% Descriptors command
\newcommand{\descript}[1]{\color{subheadings}\raggedright\scshape\fontspec{SF Hello Thin}\fontsize{10pt}{13pt}\selectfont {#1 \\} \normalfont}

% Location command
\newcommand{\location}[1]{\color{headings}\raggedright\scshape\fontspec{SF Hello Light}\fontsize{10pt}{12pt}\selectfont {#1\\} \normalfont}

% Section seperators command
\newcommand{\sectionsep}[0]{\vspace{8pt}}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{
	\vspace{-\topsep}
	\begin{itemize}
		\itemsep1pt 
		\parskip0pt 
		\parsep0pt
}{
	\end{itemize}
	\vspace{-\topsep}
}

% No indentation, default no bullets (use \lightem)
\newenvironment{lightemize}{
	\begin{description}
		\setlength{\labelsep}{0em} %can't be negative
		\setlength{\itemsep}{2pt}
		\setlength{\parskip}{0em}
		\setlength{\parindent}{0em}
}{
	\end{description}
	\vspace{-\topsep}
}

\newenvironment{lightemizebox}[1]{
	\makebox{#1}
  	\begin{minipage}[t]{\dimexpr\linewidth+11pt}
		\raggedright
		\setlength{\baselineskip}{2pt}
		\noindent
		\ignorespaces
}{
	\end{minipage}
}

\newcommand{\lightem}[1]{\item\begin{lightemizebox}{$-$} #1 \end{lightemizebox}}


