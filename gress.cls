%%Identification
%%The class identifies itself and the LaTeX version needed
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{gress}[2020/03/20 Gress LaTeX Progress Tracker class]

%%Preliminary definitions, needed by the options
\LoadClass{article}

%%This parts handles the options passed to the class.
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\RequirePackage{xcolor}
\RequirePackage{titling}
\RequirePackage{fancyhdr}
\RequirePackage{calc}
\RequirePackage{graphicx}
\RequirePackage{geometry}
\RequirePackage{droid}
\RequirePackage{coloremoji}
\RequirePackage{titlesec}
\RequirePackage{tocloft}
\RequirePackage{hyperref}
\RequirePackage[default,light,bold]{sourceserifpro}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage{mdframed}
\RequirePackage{caption}
\RequirePackage{setspace}
\RequirePackage[T1]{fontenc}
\RequirePackage{enumitem}
\RequirePackage[some, top]{background}

\newcommand\DroidSerif{\fontfamily{fdr}\selectfont}

% Variables
\newcommand{\@version}{0.0}
\newcommand{\version}[1]{\renewcommand{\@version}{#1}}


% Lists
\setlist[itemize]{leftmargin=\parindent}

% Colors
\definecolor{gressblue}{HTML}{0099cd}
\definecolor{gressdarkblue}{HTML}{006b9c}
\newcommand{\headlinecolor}{\color{gressblue}}
\definecolor{gressdarkgray}{HTML}{666666}
\definecolor{gressgray}{HTML}{777777}
\definecolor{gresslightgray}{HTML}{f9f9f9}
\definecolor{gressblack}{HTML}{010203}
\definecolor{gressred}{HTML}{b00000}
\definecolor{gressspicyred}{HTML}{eb1e2b}
\definecolor{gressnavyblue}{HTML}{060644}
\definecolor{gresssadgray}{HTML}{35393d}
\definecolor{gresslightgreen}{HTML}{f5fcfa}
\definecolor{gresslightblue}{HTML}{f5fbfc}
\definecolor{gresslightpurple}{HTML}{efe8f5}

% Links
\hypersetup{
 colorlinks=true,
 linkcolor=gressdarkblue,
 urlcolor=gressdarkblue,
 citecolor=gressdarkblue
}

% Graphics path
\graphicspath{ {./} }

% Margins
\geometry{letterpaper, total={6in, 8.5in}}

% Fonts
% \renewcommand*\rmdefault{cm}
% \renewcommand*\rmdefault{
% \renewcommand*\familydefault{\sfdefault}

% Title color
\pretitle{\begin{center}\LARGE\color{gressdarkblue}\begingroup\bfseries\DroidSerif}
\posttitle{\endgroup\par\end{center}\vskip 0.5em}

% Header
\newcommand{\headertextcolor}{\color{gressgray}}
\newcommand{\headertext}{\sffamily\headertextcolor}

% Usual page style

\pagestyle{fancy}
\renewcommand{\sectionmark}[1]{\markright{\thesection.\ #1}}
\lhead{\raisebox{-0.25\height}{\includegraphics[height=18pt]{logo/logo}}}
\chead{}
\rhead{{\headertext\rightmark}}
\lfoot{}
\lfoot{}
\cfoot{}
\rfoot{{\headertext\thepage}}
\renewcommand{\headrulewidth}{0.4pt}
\renewcommand{\footrulewidth}{0pt}
\fancyhfoffset[L,R]{3.5in - .5\textwidth}
\setlength{\footskip}{30pt}
\setlength{\headheight}{30pt}
\renewcommand{\headrule}{\hbox to\headwidth{
  \headertextcolor\leaders\hrule height \headrulewidth\hfill}}


% Title page style

\fancypagestyle{plain}{%
 \chead{}
 \lhead{}
 \rhead{}
 \lfoot{{\headertext Version {\@version} \hspace{.5em} | \hspace{.5em} \thedate}}
 \cfoot{}
 \rfoot{}
 \renewcommand{\headrulewidth}{0pt}
 \setlength{\headheight}{12pt}
}


\fancypagestyle{week}{%
 \renewcommand{\headrulewidth}{0pt}
 \chead{}
 \lhead{}
 \rhead{}
 \lfoot{}
 \cfoot{}
 \rfoot{\headertext\thepage}
 \setlength{\headheight}{0pt}
}

% Headings
\newcommand{\sectionnumberfont}{\sffamily\color{gressdarkblue}}
\titleformat{\section}{\Large\DroidSerif\bfseries}{{\sectionnumberfont\thesection}}{1em}{}
\titleformat{\subsection}{\large\DroidSerif}{{\sectionnumberfont\thesubsection}}{1em}{}

\mdfdefinestyle{week}{%
 backgroundcolor=gresslightgray,
 topline=true,
 bottomline=true,
 rightline=false,
 leftline=false,
 innertopmargin=1em,
 innerbottommargin=1em,
 innerrightmargin=1.5in,
 innerleftmargin=1.5in,
 leftmargin=-1.5in,
 rightmargin=-1.5in,
 linecolor=gressdarkblue,
 linewidth=0.4pt
}

\newcommand\week[1]{%
 \newpage
 \thispagestyle{week}
 \begin{mdframed}[style=week]
  \section{#1}
  % \noindent {\color{gressdarkblue} \rule{\textwidth}{1.2pt}}
 \end{mdframed}
 \vskip 1em
}

% Table of Contents
\newcommand{\toccolor}{\color{gressdarkblue}}
\renewcommand{\cfttoctitlefont}{\Large\sffamily}
\renewcommand{\cftsecfont}{\sffamily\toccolor}
\renewcommand{\cftsubsecfont}{\sffamily\toccolor}
\renewcommand{\cftsubsubsecfont}{\sffamily\toccolor}
\renewcommand{\cftsecpagefont}{\sffamily\toccolor}
\renewcommand{\cftsubsecpagefont}{\sffamily\toccolor}
\renewcommand{\cftsubsubsecpagefont}{\sffamily\toccolor}
\setlength{\cftaftertoctitleskip}{1em}
\setlength{\cftbeforetoctitleskip}{1.5em}

% Line spacing
\setlength{\parskip}{0.5em}
\linespread{1.1}

% custom environment template
\mdfdefinestyle{gressbase}{%
 backgroundcolor=gresslightgray,
 hidealllines=true,
 innertopmargin=1em,
 innerbottommargin=1em,
 innerrightmargin=1em,
 innerleftmargin=1em
 leftmargin=.2\textwidth
 rightmargin=.2\textwidth
}
\newenvironment{gressbase}[2][,]{%
 \begin{mdframed}[style=gressbase,#1]
  {\sffamily\Large #2}
  \par\noindent\ignorespaces
  }{\ignorespacesafterend\end{mdframed}}


% Goals
\mdfdefinestyle{goals}{style=gressbase,backgroundcolor=gresslightgray}
\newenvironment{goals}[1]{\begin{gressbase}[style=goals]{#1}
  }{\end{gressbase}}

% Gress (For displaying progress and other notes)
\mdfdefinestyle{gress}{style=gressbase,backgroundcolor=gresslightgray}
\newenvironment{gress}{\begin{gressbase}[style=gress]{Daily Gress}
  }{\end{gressbase}}

% Questions
\mdfdefinestyle{questions}{style=gressbase,backgroundcolor=gresslightblue}
\newenvironment{questions}{\begin{gressbase}[style=questions]{Questions}
  }{\end{gressbase}}

% SciMath (For displaying science and math notes)
\mdfdefinestyle{scimath}{style=gressbase,backgroundcolor=gresslightgreen}
\newenvironment{scimath}{\begin{gressbase}[style=scimath]{Science/Math Note}
  }{\end{gressbase}}

% CompSci (For displaying compsci notes)
\mdfdefinestyle{compsci}{style=gressbase,backgroundcolor=gresslightgreen}
\newenvironment{compsci}{\begin{gressbase}[style=compsci]{CompSci Note}
  }{\end{gressbase}}

% Ideas (For displaying short thoughts that are more important than passing comments)
\mdfdefinestyle{idea}{style=gressbase,backgroundcolor=gresslightpurple}
\newenvironment{idea}{\begin{gressbase}[style=idea]{Idea}
  }{\end{gressbase}}

% Footnotes
\renewcommand{\footnoterule}{%
\vskip 1.5em
\kern -3pt
{\color{gressdarkgray} \hrule width \textwidth height 0.4pt}
\kern 2.6pt
}
\setlength{\footnotesep}{1em}


% Title
\newcommand{\authorfont}{\sffamily\large\color{gressdarkgray}}
\renewcommand{\maketitle}{%
 % \BgThispage
 \begin{center}
  \vskip 1.5em
   {\noindent\huge\DroidSerif\bfseries\color{gressdarkblue}\@title}
  \vskip 1.5em
  \includegraphics[width=5in]{logo/titlepage-design}
  \vskip 1.5em
   {\authorfont \@author}
 \end{center}
 \vskip 1.5em
}


% Captions
\captionsetup{%
 format=plain,
 labelfont={sf, bf, color=gressdarkblue},
 labelsep=period,
 % textfont={color=gressdarkgray},
 margin=0.5em
}

% Contributors
\newenvironment{contributors}{%
 \vskip 1em
 \begin{mdframed}[style=goals]
  {\sffamily\Large Contributors}
  \par\noindent\ignorespaces
  }{\ignorespacesafterend\end{mdframed}}


% Emoji bullet points
\newcommand{\win}[1]{\color{gressdarkblue}{\large🏆: #1}\newline}
\newcommand{\done}[1]{\color{gressdarkblue}{\large✅: #1}\newline}
\newcommand{\thought}[1]{\color{gressnavyblue}{\large🤔: #1}\newline}
\newcommand{\sad}[1]{\color{gresssadgray}{\large😢: #1}\newline}
\newcommand{\issue}[1]{\color{gressred}{\large🚨: #1}\newline}
\newcommand{\moonshot}[1]{\color{gressdarkblue}{\large🚀: #1}\newline}
\newcommand{\bigbrain}[1]{\color{gressdarkblue}{\large🧠: #1}\newline}
\newcommand{\spicy}[1]{\color{gressspicyred}{\large🔥: #1}\newline}
\newcommand{\note}[1]{{\color{gressblack}\large📝: #1}\newline}
\newcommand{\todo}[1]{{\color{gressblack}\large📋: #1}\newline}
