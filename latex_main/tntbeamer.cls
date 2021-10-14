%%% Identification
%-----------------------------------------------------------------
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{tntbeamer}[2021/04/22 TNT Beamer Class]
% Copyright 2003 by Till Tantau <tantau@users.sourceforge.net>
%
% This program can be redistributed and/or modified under the terms
% of the GNU Public License, version 2.


%%% Preliminary definitions, needed by the class options
%-----------------------------------------------------------------


%%% Process and pass class options
%-----------------------------------------------------------------
\DeclareOption{onecolumn}{\OptionNotUsed}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{beamer}}
\ProcessOptions\relax

\LoadClass[t,xcolor={usenames,dvipsnames}]{beamer}


%%% Class Body
%-----------------------------------------------------------------
% The class body is structured as follows:
%   1. Colour theme
%   2. Font Theme
%   3. Inner Theme
%   4. Outer Theme
%   5. Behaviour
\mode<all>

\newcommand{\insertemail}{}
\newcommand{\email}[1]{%
  \renewcommand{\insertemail}{#1}
}

\mode<presentation>

%% Colour Theme
%...........................................
\mode<presentation>

% Custom 
\definecolor{tntred}{rgb}{0.561,0.000,0.000}
\definecolor{tntblue}{rgb}{0.000,0.314,0.608}  % (0, 80, 155)
\definecolor{tntdarkblue}{rgb}{0.012,0.059,0.290}

\definecolor{luhblue}{rgb}{0.000,0.314,0.608}
\definecolor{luhgreen}{rgb}{0.633,0.725,0.000}
\definecolor{luhgrey}{rgb}{0.863, 0.871, 0.871} % (220, 222, 222)

% Normal text
\setbeamercolor{tnt normal text}{fg=black,bg=white}
\setbeamercolor{tnt normal text inverse}{fg=white,bg=black}

% Titles
\setbeamercolor{tnt title}{bg=black,fg=white}
\setbeamercolor{title}{fg=luhblue}
\setbeamercolor{frametitle}{fg=luhblue, bg=white}

\setbeamercolor{titlelike}{parent=structure}

\setbeamercolor{title in head/foot}{fg=luhblue, bg=luhgrey}
\setbeamercolor{title in sidebar}{parent=palette sidebar quaternary}

\setbeamercolor{subtitle}{parent=title}

\setbeamercolor{titlegraphic}{parent=title}

\setbeamercolor{framesubtitle}{parent=frametitle}
\setbeamercolor{frametitle right}{parent=frametitle}

% Header
\setbeamercolor{section in head/foot}{fg=luhblue, bg=luhgrey}
\setbeamercolor{headline}{fg=white,bg=black}

% Footer
\setbeamercolor{tnt footline}{fg=luhblue,bg=luhgrey}  % before: white, tntdarkblue
\setbeamercolor{page number in head/foot}{fg=luhblue,bg=luhgrey}  % before: white, tntdarkblue
\setbeamercolor{footline}{}

%% Blocks
% Block
\setbeamercolor*{normal text}{parent=tnt normal text}
%TODO %\setbeamercolor{block title}{fg=luhblue}
\setbeamercolor{block title}{parent=structure,fg=white, bg=normal text.bg!65!black}
\setbeamercolor{block body}{bg=normal text.bg!89!black}

% Alert
\setbeamercolor{alerted text}{fg=luhgreen!90!black}
\setbeamercolor{block title alerted}{parent=alerted text, fg=white, bg=alerted text.fg!93!black}
\setbeamercolor{block body alerted}{bg=alerted text.fg!15!white}

% Example
\setbeamercolor{example text}{fg=luhblue}
\setbeamercolor{block title example}{parent=example text, fg=white, bg=example text.fg!99!black}
\setbeamercolor{block body example}{bg=example text.fg!15!white}

%\definecolor{beamer@blendedblue}{rgb}{0.2,0.2,0.7} % use structure theme to change

% Structure
\setbeamercolor{structure}{fg=luhblue}
\setbeamercolor{local structure}{parent=structure}

% Background
\setbeamercolor{background canvas}{parent=normal text}
\setbeamercolor{background}{parent=background canvas}

% Palettes
\setbeamercolor{palette primary}{use=structure,fg=structure.fg}
\setbeamercolor{palette secondary}{use=structure,fg=structure.fg!75!black}
\setbeamercolor{palette tertiary}{use=structure,fg=structure.fg!50!black}
\setbeamercolor{palette quaternary}{fg=black}

\setbeamercolor{palette sidebar primary}{use=normal text,fg=normal text.fg}
\setbeamercolor{palette sidebar secondary}{use=structure,fg=structure.fg}
\setbeamercolor{palette sidebar tertiary}{use=normal text,fg=normal text.fg}
\setbeamercolor{palette sidebar quaternary}{use=structure,fg=structure.fg}

% Math
\setbeamercolor{math text}{}
\setbeamercolor{math text inlined}{parent=math text}
\setbeamercolor{math text displayed}{parent=math text}
\setbeamercolor{normal text in math text}{}

% Author
\setbeamercolor{author}{parent=title}
\setbeamercolor{author in head/foot}{parent=tnt footline, fg=black}
\setbeamercolor{author in sidebar}{use=palette sidebar tertiary,fg=palette sidebar tertiary.fg}

% Institute
\setbeamercolor{institute}{parent=title}
\setbeamercolor{institute in head/foot}{fg=luhblue, bg=luhgrey}
\setbeamercolor{institute in title page}{parent=title}
\setbeamercolor{institute in sidebar}{use=palette sidebar tertiary,fg=palette sidebar tertiary.fg}

% Date
\setbeamercolor{date}{parent=title}
\setbeamercolor{date in head/foot}{fg=black, bg=luhgrey}
\setbeamercolor{date in sidebar}{use=palette sidebar tertiary,fg=palette sidebar tertiary.fg}

% Parts
\setbeamercolor{part name}{}
\setbeamercolor{part title}{parent=titlelike}

% Sections
\setbeamercolor{section in toc}{fg=luhblue}
\setbeamercolor{section in toc}{parent=structure}
\setbeamercolor{section in toc shaded}{parent=section in toc}

\setbeamercolor{section in sidebar}{parent=palette sidebar secondary}
\setbeamercolor{section in sidebar shaded}{use=section in sidebar,fg=section in sidebar.fg!40!bg}
\setbeamercolor{section number projected}{parent=item projected}

\setbeamercolor{subsection in toc}{fg=luhblue}
\setbeamercolor{subsection in toc shaded}{parent=subsection in toc}
\setbeamercolor{subsection in head/foot}{fg=luhblue, bg=luhgrey}
\setbeamercolor{subsection in sidebar}{}
\setbeamercolor{subsection in sidebar shaded}{use=subsection in sidebar,fg=subsection in sidebar.fg!40!bg}
\setbeamercolor{subsection number projected}{parent={subitem projected}}

\setbeamercolor{subsubsection in toc}{parent=subsection in toc}
\setbeamercolor{subsubsection in toc shaded}{parent=subsubsection in toc}
\setbeamercolor{subsubsection in head/foot}{parent=subsection in head/foot}
\setbeamercolor{subsubsection in sidebar}{parent=subsection in sidebar}
\setbeamercolor{subsubsection in sidebar shaded}{parent=subsection in sidebar shaded}
\setbeamercolor{subsubsection number projected}{parent=subsubitem projected}

% Sidebar
\setbeamercolor{sidebar}{}
\setbeamercolor{sidebar left}{parent=sidebar}
\setbeamercolor{sidebar right}{parent=sidebar}

% Logo
\setbeamercolor{logo}{parent=palette secondary}

% Caption
\setbeamercolor{caption}{}
\setbeamercolor{caption name}{parent=structure, fg=luhblue}

\setbeamercolor{button}{use=local structure,bg=local structure.fg!50!bg,fg=white}
\setbeamercolor{button border}{use=button,fg=button.bg}
\setbeamercolor{navigation symbols}{use=structure,fg=structure.fg!40!bg}
\setbeamercolor{navigation symbols dimmed}{use=structure,fg=structure.fg!20!bg}
\setbeamercolor{mini frame}{parent=section in head/foot}

% Lists
\setbeamercolor{item}{parent=local structure, fg=luhblue}
\setbeamercolor{subitem}{parent=item}
\setbeamercolor{subsubitem}{parent=subitem}

\setbeamercolor{item projected}{parent=item,use=item,fg=white,bg=item.fg}
\setbeamercolor{subitem projected}{parent=item projected}
\setbeamercolor{subsubitem projected}{parent=subitem projected}

\setbeamercolor{enumerate item}{parent=item}
\setbeamercolor{enumerate subitem}{parent=subitem}
\setbeamercolor{enumerate subsubitem}{parent=subsubitem}

\setbeamercolor{itemize item}{parent=item}
\setbeamercolor{itemize subitem}{parent=subitem}
\setbeamercolor{itemize subsubitem}{parent=subsubitem}

\setbeamercolor{itemize/enumerate body}{}
\setbeamercolor{itemize/enumerate subbody}{}
\setbeamercolor{itemize/enumerate subsubbody}{}

\setbeamercolor{description item}{parent=item}

% Bibliography
\setbeamercolor{bibliography item}{parent=item}

\setbeamercolor{bibliography entry author}{use=structure,fg=structure.fg}
\setbeamercolor{bibliography entry title}{use=normal text,fg=normal text.fg}
\setbeamercolor{bibliography entry location}{use=structure,fg=structure.fg!65!bg}
\setbeamercolor{bibliography entry note}{use=structure,fg=structure.fg!65!bg}

% Seperation Lines
\setbeamercolor{separation line}{}

\setbeamercolor{upper separation line head}{parent=separation line}
\setbeamercolor{middle separation line head}{parent=separation line}
\setbeamercolor{lower separation line head}{parent=separation line}

\setbeamercolor{upper separation line foot}{parent=separation line}
\setbeamercolor{middle separation line foot}{parent=separation line}
\setbeamercolor{lower separation line foot}{parent=separation line}


% Abstract
\setbeamercolor{abstract}{}
\setbeamercolor{abstract title}{parent=structure}

% Verse
\setbeamercolor{verse}{}

% Quotation
\setbeamercolor{quotation}{}
\setbeamercolor{quote}{parent=quotation}

% QED Symbol
\setbeamercolor{qed symbol}{parent=structure}

\mode<all>


%% Font Theme
%...........................................
\RequirePackage[scaled]{helvet}

\mode<presentation>

% Normal/alerted/example/projected text
\setbeamerfont{normal text}{} % ignored currently
\setbeamerfont{alerted text}{}
\setbeamerfont{example text}{}
\setbeamerfont{projected text}{parent={tiny structure}}

% Structure
\setbeamerfont{structure}{}
\setbeamerfont{tiny structure}{size=\tiny}

% Titles
\setbeamerfont{title}{size=\Large,parent=structure, series=\bfseries}
\setbeamerfont{title in head/foot}{family=\sffamily, series=\mdseries, shape=\upshape}
\setbeamerfont{title in sidebar}{size=\tiny}

\setbeamerfont{subtitle}{size=\normalsize,parent=title}

\setbeamerfont{frametitle}{parent=structure,size=\Large}
\setbeamerfont{framesubtitle}{parent=frametitle,size=\footnotesize}

% Author
\setbeamerfont{author}{}
\setbeamerfont{author in head/foot}{family=\sffamily, series=\bfseries, shape=\upshape}
\setbeamerfont{author in sidebar}{size=\tiny}

% Institute
\setbeamerfont{institute}{size=\scriptsize}
\setbeamerfont{institute in title page}{family=\sffamily, series=\mdseries, shape=\upshape, size=\small}
\setbeamerfont{institute in head/foot}{family=\sffamily, series=\mdseries, shape=\upshape}
\setbeamerfont{institute in sidebar}{}

% Date
\setbeamerfont{date}{}
\setbeamerfont{date in head/foot}{family=\sffamily, series=\mdseries, shape=\upshape}
\setbeamerfont{date in sidebar}{}

% Part
\setbeamerfont{part name}{size=\LARGE}
\setbeamerfont{part title}{size=\LARGE,parent=title}

% Sections
\setbeamerfont{section name}{size=\Large}
\setbeamerfont{section title}{size=\Large,parent=title}

\setbeamerfont{section in toc}{parent=structure}
\setbeamerfont{section in toc shaded}{parent=section in toc}
\setbeamerfont{section in head/foot}{size=\small, family=\sffamily, series=\mdseries, shape=\upshape}
\setbeamerfont{section in sidebar}{size=\tiny}
\setbeamerfont{section number projected}{size=\small,parent={section in toc,projected text}}

\setbeamerfont{subsection name}{size=\large}
\setbeamerfont{subsection title}{size=\large,parent=title}

\setbeamerfont{subsection in toc}{parent=structure, size=\small}
\setbeamerfont{subsection in toc shaded}{parent=subsection in toc}
\setbeamerfont{subsection in head/foot}{}
\setbeamerfont{subsection in sidebar}{}

\setbeamerfont{subsubsection in toc}{size=\footnotesize}
\setbeamerfont{subsubsection in toc shaded}{parent=subsubsection in toc}
\setbeamerfont{subsubsection in head/foot}{}
\setbeamerfont{subsubsection in sidebar}{}

% Header/Footer
\setbeamerfont{headline}{parent={tiny structure}}
\setbeamerfont{footline}{parent={tiny structure}}

% Sidebar
\setbeamerfont{sidebar}{size=\Tiny,parent={tiny structure}}
\setbeamerfont{sidebar left}{parent=sidebar}
\setbeamerfont{sidebar right}{parent=sidebar}

% Caption
\setbeamerfont{caption}{size=\small}
\setbeamerfont{caption name}{parent={structure,caption}}

% Button
\setbeamerfont{button}{size=\tiny}

% Block
\setbeamerfont{block body}{}
\setbeamerfont{block body alerted}{}
\setbeamerfont{block body example}{}
\setbeamerfont{block title}{size=\large,parent={structure,block body}}
\setbeamerfont{block title alerted}{parent={block title,alerted text}}
\setbeamerfont{block title example}{parent={block title,example text}}

% Lists
\setbeamerfont{item}{parent=structure}
\setbeamerfont{subitem}{parent=item}
\setbeamerfont{subsubitem}{parent=subitem}

\setbeamerfont{item projected}{size=\tiny,parent={item,projected text}}
\setbeamerfont{subitem projected}{parent=item projected}
\setbeamerfont{subsubitem projected}{parent=subitem projected}

\setbeamerfont{itemize item}{parent=item}
\setbeamerfont{itemize subitem}{parent=subitem}
\setbeamerfont{itemize subsubitem}{parent=subsubitem}

\setbeamerfont{enumerate item}{parent=item}
\setbeamerfont{enumerate subitem}{parent=subitem}
\setbeamerfont{enumerate subsubitem}{parent=subsubitem}

\setbeamerfont{itemize/enumerate body}{}
\setbeamerfont{itemize/enumerate subbody}{size=\small}
\setbeamerfont{itemize/enumerate subsubbody}{size=\footnotesize}

\setbeamerfont{description item}{parent=item}

% Abstract
\setbeamerfont{abstract}{size=\small}
\setbeamerfont{abstract title}{parent={abstract,structure},size=\normalsize}

% Verse
\setbeamerfont{verse}{family=\rmfamily,shape=\itshape}

% Quotation
\setbeamerfont{quotation}{shape=\itshape}
\setbeamerfont{quote}{parent=quotation}

% Note
\setbeamerfont{note page}{size=\small}

\mode<all>


%% Inner Theme
%...........................................
\RequirePackage[absolute,overlay]{textpos}
\RequirePackage[]{tikz}

\mode<presentation>

% Image Definitions
%~~~~~~~~~~~~~~~~~~
% Beamer
\pgfdeclareimage[width=14pt,height=12pt]{beamericonbook}{beamericonbook}
\pgfdeclareimage[width=14pt,height=12pt]{beamericonbookshaded}{beamericonbook.20}
\pgfaliasimage{beamericonbook.!20opaque}{beamericonbookshaded}
\pgfaliasimage{beamericonbook.!15opaque}{beamericonbookshaded}
\pgfaliasimage{beamericonbook.!10opaque}{beamericonbookshaded}
\pgfaliasimage{beamericonbook.!5opaque}{beamericonbookshaded}
\pgfaliasimage{beamericonbook.!2opaque}{beamericonbookshaded}
\pgfdeclareimage[width=11pt,height=14pt]{beamericonarticle}{beamericonarticle}
\pgfdeclareimage[width=11pt,height=14pt]{beamericonarticleshaded}{beamericonarticle.20}
\pgfaliasimage{beamericonarticle.!20opaque}{beamericonarticleshaded}
\pgfaliasimage{beamericonarticle.!15opaque}{beamericonarticleshaded}
\pgfaliasimage{beamericonarticle.!10opaque}{beamericonarticleshaded}
\pgfaliasimage{beamericonarticle.!5opaque}{beamericonarticleshaded}
\pgfaliasimage{beamericonarticle.!2opaque}{beamericonarticleshaded}


% TNT title page
%~~~~~~~~~~~~~~~~~~
\newcommand{\drawluhbar}[1]{
  \begin{tikzpicture}[remember picture,overlay]
    \coordinate (A) at ($(current page.south east)-(0.125\paperwidth,-3.55ex)$);
    \coordinate (B) at ($(current page.south east)-(0.0\paperwidth+4ex,-3.55ex)$);
    \draw[#1, line width=2]%, cap=round]
        (A.center) -- (B.center);
  \end{tikzpicture}
}
\defbeamertemplate*{title page}{luhstyle}[1][]
{
    %\usebeamerfont{institute in title page}\usebeamercolor[fg]{institute in title page}\insertinstitute}\par
    \vskip2.5em
    \usebeamerfont{title}\usebeamercolor[fg]{title}\inserttitle\par
}
\newcommand{\addtitlepageimage}[1]{
    \addtobeamertemplate{title page}{}{
          % draw title picture on right hand side
          \begin{tikzpicture}[remember picture,overlay]
            \node[anchor=south west,yshift=6.5pt, xshift=-5pt] at (current page.south west) {#1};
          \end{tikzpicture}
    }
}%
\defbeamertemplate*{title page}{tntdefault}[1][]
{
  \thispagestyle{empty}
  {%   
    \begin{tikzpicture}[remember picture,overlay]
        \coordinate (A) at ($(current page.north west)+(0.05\paperwidth,0)$);
        \coordinate (B) at ($(current page.south west)+(0.05\paperwidth,0)$);
        \draw[luhgrey, line width=3]%, cap=round]
            (A.center) -- (B.center);
    \end{tikzpicture}
    }
    \begin{columns}
      \column[]{0.03\linewidth}
      \column[t]{0.7\linewidth} \vfill
      \vskip4em\par
      \begin{beamercolorbox}[sep=8pt,left,#1]{title}
        \usebeamerfont{title}\inserttitle\par%
        \ifx\insertsubtitle\@empty%
        \else%
        \vskip0.25em%

        {\usebeamerfont{subtitle}\usebeamercolor[fg]{subtitle}\insertsubtitle\par}%
        \fi%
      \end{beamercolorbox}%
      \vskip1em\par
      \begin{beamercolorbox}[sep=8pt,left,#1]{author}
        \usebeamerfont{author}\insertauthor
      \end{beamercolorbox}
      \begin{beamercolorbox}[sep=8pt,left,#1]{institute}
        \usebeamerfont{institute}\insertinstitute
      \end{beamercolorbox}
      \begin{beamercolorbox}[sep=8pt,left,#1]{date}
        \usebeamerfont{date}\insertdate
      \end{beamercolorbox}%
      \vfill 
      \column[]{0.27\linewidth}
    \end{columns}
}
\newcommand{\addtitlepageimagedefault}[1]{
    \addtobeamertemplate{title page}{}{
          % draw title picture on right hand side
          \begin{tikzpicture}[remember picture,overlay]
            \node[anchor=east,yshift=0pt, xshift=4pt] at (current page.east) {#1};
          \end{tikzpicture}
    }
}%
\newcommand{\settitleheaderimage}[1]{
\addtobeamertemplate{title page}{}{%
    \begin{tikzpicture}[remember picture,overlay]
        \node[anchor=north east,yshift=0pt] at (current page.north east) {#1};
    \end{tikzpicture}
}
}
% \addtobeamertemplate{title page}{
%     % footline without frame numbers
%     % executed before title page
%     \setbeamertemplate{footline}[luhstyle]
% }{
%     % footline with frame numbers
%     % executed after title page
%     \setbeamertemplate{footline}[luhstyle]
% }


% Part page: default
%~~~~~~~~~~~~~~~~~~~
\defbeamertemplate*{part page}{tnt}[1][]
{
  \begin{centering}
    {\usebeamerfont{part name}\usebeamercolor[fg]{part name}\partname~\insertromanpartnumber}
    \vskip1em\par
    \begin{beamercolorbox}[sep=8pt,center,#1]{part title}
      \usebeamerfont{part title}\insertpart\par
    \end{beamercolorbox}
  \end{centering}
} 


% Sections
%~~~~~~~~~~~~~~~~~~
% (sub-)section in toc: default
\defbeamertemplate*{section in toc}{tnt}
{\inserttocsection\par}

\defbeamertemplate*{subsection in toc}{tnt}
{\leavevmode\leftskip=1.5em\inserttocsubsection\par}

\defbeamertemplate*{subsubsection in toc}{tnt}
{\leavevmode\normalsize\usebeamerfont{subsection in toc}\leftskip=3em%
  \usebeamerfont{subsubsection in toc}\inserttocsubsubsection\par}


% (sub-)section in toc shaded, default
\defbeamertemplate*{section in toc shaded}{tnt}[1][20]
{\begin{colormixin}{#1!parent.bg}\usebeamertemplate{section in toc}\end{colormixin}\unskip}

\defbeamertemplate*{subsection in toc shaded}{tnt}[1][20]
{\begin{colormixin}{#1!parent.bg}\usebeamertemplate{subsection in toc}\end{colormixin}\unskip}

\defbeamertemplate*{subsubsection in toc shaded}{tnt}[1][20]
{\begin{colormixin}{#1!parent.bg}\usebeamertemplate{subsubsection in toc}\end{colormixin}\unskip}


% Lists
%~~~~~~~~~~~~~~~~~~
% Itemize items, default
\defbeamertemplate*{itemize item}{tnt}{\scriptsize\raise1.25pt\hbox{\donotcoloroutermaths$\blacktriangleright$}}
\defbeamertemplate*{itemize subitem}{tnt}{\tiny\raise1.5pt\hbox{\donotcoloroutermaths$\blacktriangleright$}}
\defbeamertemplate*{itemize subsubitem}{tnt}{\tiny\raise1.5pt\hbox{\donotcoloroutermaths$\blacktriangleright$}}

% Enumerate items, default
\defbeamertemplate*{enumerate item}{tnt}{\insertenumlabel.}
\defbeamertemplate*{enumerate subitem}{tnt}{\insertenumlabel.\insertsubenumlabel}
\defbeamertemplate*{enumerate subsubitem}{tnt}{\insertenumlabel.\insertsubenumlabel.\insertsubsubenumlabel}
\defbeamertemplate*{enumerate mini template}{tnt}{\insertenumlabel}

% Description item width
\defbeamertemplate*{description item}{tnt}{\insertdescriptionitem}

% Itemize/Enumerate body
\defbeamertemplate*{itemize/enumerate body begin}{tnt}{}
\defbeamertemplate*{itemize/enumerate body end}{tnt}{}

\defbeamertemplate*{itemize/enumerate subbody begin}{tnt}{}
\defbeamertemplate*{itemize/enumerate subbody end}{tnt}{}

\defbeamertemplate*{itemize/enumerate subsubbody begin}{tnt}{}
\defbeamertemplate*{itemize/enumerate subsubbody end}{tnt}{}


% Text
%~~~~~~~~~~~~~~~~~~
% Alerted text
\defbeamertemplate*{alerted text begin}{tnt}{\setbeamercolor{local structure}{parent=alerted text}}

% Structured text
% empyt defaults


% Bibliography
%~~~~~~~~~~~~~~~~~~
\defbeamertemplate*{bibliography item}{tnt}
{\lower3.5pt\hbox{\hskip2pt\pgfuseimage{beamericonarticle}\hskip1pt}}

\defbeamertemplate*{bibliography entry article}{tnt}{}
\defbeamertemplate*{bibliography entry title}{tnt}{\par}
\defbeamertemplate*{bibliography entry location}{tnt}{\par}
\defbeamertemplate*{bibliography entry note}{tnt}{\par}


% Buttons
%~~~~~~~~~~~~~~~~~~
\newdimen\beamer@dima%
\newdimen\beamer@dimb%

\defbeamertemplate*{button}{tnt}
{%
  \setbox\beamer@tempbox=\hbox{{\insertbuttontext}}%
  \ht\beamer@tempbox=6pt%
  \dp\beamer@tempbox=0pt%
  \setbox\beamer@tempbox=\vbox{\box\beamer@tempbox\vskip2pt}%
  \beamer@tempdim=\wd\beamer@tempbox%
  \beamer@dima=\beamer@tempdim\advance\beamer@dima by2.2pt
  \beamer@dimb=\beamer@tempdim\advance\beamer@dimb by4pt
  \begin{pgfpicture}{-4pt}{0pt}{\the\beamer@tempdim}{8pt}
    \color{bg}
    \pgfsetlinewidth{0.8pt}
    \pgfpathqmoveto{0pt}{0pt}
    \pgfpathqcurveto{-2.2pt}{0pt}{-4pt}{1.8pt}{-4pt}{4pt}
    \pgfpathqcurveto{-4pt}{6.2pt}{-2.2pt}{8pt}{0pt}{8pt}
    \pgfpathlineto{\pgfpoint{\the\beamer@tempdim}{8pt}}
    \pgfpathcurveto%
    {\pgfpoint{\the\beamer@dima}{8pt}}%
    {\pgfpoint{\the\beamer@dimb}{6.2pt}}%
    {\pgfpoint{\the\beamer@dimb}{4pt}}
    \pgfpathcurveto%
    {\pgfpoint{\the\beamer@dimb}{1.8pt}}%
    {\pgfpoint{\the\beamer@dima}{0pt}}%
    {\pgfpoint{\the\beamer@tempdim}{0pt}}
    \pgfpathclose
    \pgfusepathqfill
    \colorlet{bg}{parent.bg}
    \usebeamercolor[fg]{button border}
    \pgfpathqmoveto{0pt}{0pt}
    \pgfpathqcurveto{-2.2pt}{0pt}{-4pt}{1.8pt}{-4pt}{4pt}
    \pgfpathqcurveto{-4pt}{6.2pt}{-2.2pt}{8pt}{0pt}{8pt}
    \pgfpathlineto{\pgfpoint{\the\beamer@tempdim}{8pt}}
    \pgfpathcurveto%
    {\pgfpoint{\the\beamer@dima}{8pt}}%
    {\pgfpoint{\the\beamer@dimb}{6.2pt}}%
    {\pgfpoint{\the\beamer@dimb}{4pt}}
    \pgfpathcurveto%
    {\pgfpoint{\the\beamer@dimb}{1.8pt}}%
    {\pgfpoint{\the\beamer@dima}{0pt}}%
    {\pgfpoint{\the\beamer@tempdim}{0pt}}
    \pgfpathclose
    \pgfusepathqstroke
  \end{pgfpicture}%
  \hskip-\beamer@tempdim%
  \box\beamer@tempbox%
  \kern4pt%
}


% Abstract
%~~~~~~~~~~~~~~~~~~
\defbeamertemplate*{abstract title}{tnt}
{%
  \begin{center}%
    \abstractname
  \end{center}%
}

\defbeamertemplate*{abstract begin}{tnt}
{%
\beamercolorbox[vmode]{abstract}\leftskip2em\rightskip2em plus 1fill\usebeamerfont*{abstract}}
\defbeamertemplate*{abstract end}{tnt}
{\medskip\endbeamercolorbox}


% Verse
%~~~~~~~~~~~~~~~~~~
\defbeamertemplate*{verse begin}{tnt}
{\beamercolorbox[vmode]{verse}}

\defbeamertemplate*{verse end}{tnt}
{\endbeamercolorbox}


% Quotation
%~~~~~~~~~~~~~~~~~~
\defbeamertemplate*{quotation begin}{tnt}
{\beamercolorbox[vmode]{quotation}}

\defbeamertemplate*{quotation end}{tnt}
{\endbeamercolorbox}


% Quote
%~~~~~~~~~~~~~~~~~~
\defbeamertemplate*{quote begin}{tnt}
{\beamercolorbox[vmode]{quote}}

\defbeamertemplate*{quote end}{tnt}
{\endbeamercolorbox}


% Footnotes
%~~~~~~~~~~~~~~~~~~
\defbeamertemplate*{footnote}{tnt}
{
  \parindent 1em\noindent%
  \raggedright
  \hbox to 1.8em{\hfil\insertfootnotemark}\insertfootnotetext\par%
}


% Captions
%~~~~~~~~~~~~~~~~~~
\defbeamertemplate*{caption}{tnt}
{%
  \raggedright
  {%
    \usebeamercolor[fg]{caption name}%
    \usebeamerfont*{caption name}%
    \insertcaptionname:%
  }
  \insertcaption\par
}


% Blocks
%~~~~~~~~~~~~~~~~~~
%% Block
% Block: Begin
\defbeamertemplate*{block begin}{tnt}
{
  \par\vskip\medskipamount%
  \begin{beamercolorbox}[colsep*=.75ex]{block title}
    \usebeamerfont*{block title}\insertblocktitle%
  \end{beamercolorbox}%
  {\parskip0pt\par}%
  \ifbeamercolorempty[bg]{block title}
  {}
  {\ifbeamercolorempty[bg]{block body}{}{\nointerlineskip\vskip-0.5pt}}%
  \usebeamerfont{block body}%
  \begin{beamercolorbox}[colsep*=.75ex,vmode]{block body}%
    \ifbeamercolorempty[bg]{block body}{\vskip-.25ex}{\vskip-.75ex}\vbox{}%
}
% Block: End
\defbeamertemplate*{block end}{tnt}  
{\end{beamercolorbox}\vskip\smallskipamount}

%% Alert
% Alert: Begin
\defbeamertemplate*{block alerted begin}{tnt}
{
  \par\vskip\medskipamount%
  \begin{beamercolorbox}[colsep*=.75ex]{block title alerted}
    \usebeamerfont*{block title alerted}\insertblocktitle%
  \end{beamercolorbox}%
  {\parskip0pt\par}%
  \ifbeamercolorempty[bg]{block title alerted}
  {}
  {\ifbeamercolorempty[bg]{block body alerted}{}{\nointerlineskip\vskip-0.5pt}}%
  \usebeamerfont{block body alerted}%
  \begin{beamercolorbox}[colsep*=.75ex,vmode]{block body alerted}%
    \ifbeamercolorempty[bg]{block body alerted}{\vskip-.25ex}{\vskip-.75ex}\vbox{}%
}
% Alert: End
\defbeamertemplate*{block alerted end}{tnt}
{\end{beamercolorbox}\vskip\smallskipamount}

%% Example
% Example: Begin
\defbeamertemplate*{block example begin}{tnt}
{
  \par\vskip\medskipamount%
  \begin{beamercolorbox}[colsep*=.75ex]{block title example}
    \usebeamerfont*{block title example}\insertblocktitle%
  \end{beamercolorbox}%
  {\parskip0pt\par}%
  \ifbeamercolorempty[bg]{block title example}
  {}
  {\ifbeamercolorempty[bg]{block body example}{}{\nointerlineskip\vskip-0.5pt}}%
  \usebeamerfont{block body example}%
  \begin{beamercolorbox}[colsep*=.75ex,vmode]{block body example}%
    \ifbeamercolorempty[bg]{block body example}{\vskip-.25ex}{\vskip-.75ex}\vbox{}%
}
% Example: End
\defbeamertemplate*{block example end}{tnt}
{\end{beamercolorbox}\vskip\smallskipamount}

%% Theorem
% Theorem: Begin
\defbeamertemplate*{theorem begin}{tnt}
{%
  \begin{\inserttheoremblockenv}
  {%
    \inserttheoremname
    \ifx\inserttheoremaddition\@empty\else\ (\inserttheoremaddition)\fi%
  }%
}
% Theorem: End
\defbeamertemplate*{theorem end}{tnt}
{\end{\inserttheoremblockenv}}

%% Proofs
% Proof: Begin
\defbeamertemplate*{proof begin}{tnt}
{\begin{block}{\insertproofname}}
% Proof: End
\defbeamertemplate*{proof end}{tnt}
{\end{block}}
% QED Symbol
\defbeamertemplate*{qed symbol}{tnt}
{\openbox}

%% General Settings for Blocks
\setbeamercovered{transparent}
\setbeamertemplate{blocks}[default]%[shadow=true]

%% General Settings for Table of Content
\setbeamertemplate{section in toc}[square]
\setbeamertemplate{subsection in toc}[circle]

\mode<all>



%% Outer Theme
%...........................................
\RequirePackage[]{tikz}
\RequirePackage[absolute,overlay]{textpos}

\mode<presentation>

% Header/Footer
%~~~~~~~~~~~~~~~~~~
% Footline
\defbeamertemplate*{footline}{empty}{}
\defbeamertemplate*{footline}{tntdefault}
{
  \begin{beamercolorbox}[wd=\paperwidth,ht=2.5\baselineskip,dp=1.125ex,%
    leftskip=0cm,rightskip=.3cm plus1fil]{section in head/foot}
    \unitlength1pt
    \hspace*{1em}\pgfuseimage{tntlogo}
    \begin{tabular}[b]{l}
      \usebeamercolor{author}\insertauthor\\
      \usebeamercolor{author}\insertemail
    \end{tabular}\hfill
    \usebeamercolor{page number in head/foot}
    \usebeamerfont{page number in head/foot}
    \insertframenumber
 \end{beamercolorbox}
}
\defbeamertemplate*{footline}{luhstyle}
{
  \leavevmode%
  \hbox{%
  % AUTHOR, title, date
  \begin{beamercolorbox}[wd=.666666\paperwidth,ht=5ex,dp=1ex,left,sep=0.1cm]{author in head/foot}%
  \hspace*{2em}
    \usebeamerfont{author in head/foot}\insertshortauthor\hspace*{1.5em}
    \usebeamerfont{title in head/foot}\insertshorttitle,\hspace*{0.5em}
    \usebeamerfont{date in head/foot}\insertshortdate{}
  \end{beamercolorbox}%
  
  % frame number
  \begin{beamercolorbox}[wd=.333333\paperwidth,ht=5ex,dp=1ex,right,sep=0.1cm]{date in head/foot}%
    \insertframenumber\hspace*{6ex} 
  \end{beamercolorbox}}%
  \vskip0pt%
  
  % blue bar above grey footline box
  \begin{tikzpicture}[remember picture,overlay]
    \coordinate (A) at ($(current page.south east)-(0.125\paperwidth,-5.55ex)$);  % before: colorbox: ht=3ex, sep=0, linepos: -3.55ex
    \coordinate (B) at ($(current page.south east)-(0.0\paperwidth+4ex,-5.55ex)$);  % before: colorbox: ht=3ex, sep=0, linepos: -3.55ex
    \draw[luhblue, line width=2.75]%, cap=round]
        (A.center) -- (B.center);
  \end{tikzpicture}
}
\defbeamertemplate*{footline}{luhstylenonr}
{
  \leavevmode%
  \hbox{%
  % AUTHOR, title, date
  \begin{beamercolorbox}[wd=.666666\paperwidth,ht=5ex,dp=1ex,left,sep=0.1cm]{author in head/foot}%
  \hspace*{2em}
    \usebeamerfont{author in head/foot}\insertauthor\hspace*{1.5em}
    \usebeamerfont{title in head/foot}\insertshorttitle,\hspace*{0.5em}
    \usebeamerfont{date in head/foot}\insertshortdate
  \end{beamercolorbox}%
  
  % frame number
  \begin{beamercolorbox}[wd=.333333\paperwidth,ht=5ex,dp=1ex,right,sep=0.1cm]{date in head/foot}%
    \hspace*{6ex} 
  \end{beamercolorbox}}%
  \vskip0pt%
  
  % blue bar above grey footline box
  \begin{tikzpicture}[remember picture,overlay]
    \coordinate (A) at ($(current page.south east)-(0.125\paperwidth,-5.55ex)$);     % before: colorbox: ht=3ex, sep=0, linepos: -3.55ex
    \coordinate (B) at ($(current page.south east)-(0.0\paperwidth+4ex,-5.55ex)$); % before: colorbox: ht=3ex, sep=0, linepos: -3.55ex
    \draw[luhblue, line width=2.75]%, cap=round]
        (A.center) -- (B.center);
  \end{tikzpicture}
}
\defbeamertemplate*{footline}{tnt3cols}
{
  \leavevmode%
  \hbox{%
  \begin{beamercolorbox}[wd=.333333\paperwidth,ht=2.25ex,dp=1ex,center]{author in head/foot}%
    \usebeamerfont{author in head/foot}\insertshortauthor
  \end{beamercolorbox}%
  \begin{beamercolorbox}[wd=.333333\paperwidth,ht=2.25ex,dp=1ex,center]{title in head/foot}%
    \usebeamerfont{title in head/foot}\insertshorttitle
  \end{beamercolorbox}%
  \begin{beamercolorbox}[wd=.333333\paperwidth,ht=2.25ex,dp=1ex,right]{date in head/foot}%
    \usebeamerfont{date in head/foot}\insertshortdate{}\hspace*{2em}
    \insertframenumber\hspace*{2ex} 
  \end{beamercolorbox}}%
  \vskip0pt%
  
  % blue bar above grey footline box
  \begin{tikzpicture}[remember picture,overlay]
    \coordinate (A) at ($(current page.south east)-(0.15\paperwidth,-3.55ex)$);
    \coordinate (B) at ($(current page.south east)-(0.0\paperwidth,-3.55ex)$);
    \draw[luhblue, line width=2]%, cap=round]
        (A.center) -- (B.center);
  \end{tikzpicture}
}

% Headline
\defbeamertemplate*{headline}{empty}{}
\defbeamertemplate*{headline}{sections}
{
 \begin{beamercolorbox}[wd=\paperwidth,ht=1.7\baselineskip,dp=5pt,%
      leftskip=0cm,rightskip=.3cm plus1fil]{section in head/foot}
      \usebeamerfont{section in head/foot}
%       \insertsectionnavigation{\paperwidth}
      \ifx\insertsubsectionhead\@empty%
      {\hfill\insertsectionhead\hfill}
      \else%
      {\hfill\insertsectionhead \ /  \insertsubsectionhead\hfill}
      \fi
%       \vspace{0.2\baselineskip}
 \end{beamercolorbox}
}
\defbeamertemplate*{headline}{sections light}
{
 \begin{beamercolorbox}[wd=\paperwidth,ht=1.7\baselineskip,dp=5pt,%
      leftskip=0cm,rightskip=.3cm plus1fil]{section in head/foot}
      \usebeamerfont{section in head/foot}
%       \insertsectionnavigation{\paperwidth}
      \ifx\insertsubsectionhead\@empty%
      {\hfill\insertsectionhead\hfill}
      \else%
      {\hfill\insertsectionhead \ /  \insertsubsectionhead\hfill}
      \fi
%       \vspace{0.2\baselineskip}
 \end{beamercolorbox}
    \vskip1ex
  \begin{beamercolorbox}[colsep=1.5pt,wd=\paperwidth]{lower separation line head}
  \end{beamercolorbox}
}

\defbeamertemplate*{frametitle}{luhstyle}[1][left]
{%
    % copied from https://github.com/josephwright/beamer/blob/main/base/themes/outer/beamerouterthemedefault.sty
  \ifbeamercolorempty[bg]{frametitle}{}{\nointerlineskip}%
  \@tempdima=\textwidth%
  \advance\@tempdima by\beamer@leftmargin%
  \advance\@tempdima by\beamer@rightmargin%
  
  % Added ht=-\logoheight to the colorbox
  \begin{beamercolorbox}[sep=0.cm,#1,wd=\the\@tempdima,ht=\logoheight]{frametitle}
    \usebeamerfont{frametitle}%
    \usebeamercolor{frametitle}%
    \vbox{}\vskip-1ex%
    \if@tempswa\else\csname beamer@fte#1\endcsname\fi%
    \hskip0.5cm\strut\insertframetitle\strut\par%  % added hskip here
    {%
      \ifx\insertframesubtitle\@empty%
      \else%
      {\usebeamerfont{framesubtitle}\usebeamercolor[fg]{framesubtitle}\strut\insertframesubtitle\strut\par}%
      \fi
    }%
    \vskip-0.65ex%   % controls the vertical position of the frametitle
    \if@tempswa\else\vskip-.3cm\fi% set inside beamercolorbox... evil here...
  \end{beamercolorbox}%
}

\newcommand{\setheaderimage}[1]{
\addtobeamertemplate{frametitle}{}{%
    \begin{tikzpicture}[remember picture,overlay]
        \node[anchor=north east,yshift=0pt] at (current page.north east) {#1};
    \end{tikzpicture}
    %this is for aligning the frametitle with the logo
    % \begin{tikzpicture}[remember picture,overlay]
    %     \coordinate (A) at ($(current page.north west)+(0.0,-\logoheight-\headheight)$);
    %     \coordinate (B) at ($(current page.north east)+(0.0,-\logoheight-\headheight)$);
    %     \draw[luhblue, line width=1]%, cap=round]
    %         (A.center) -- (B.center);
    % \end{tikzpicture}
}
}



% Misc
%~~~~~~~~~~~~~~~~~~
\setbeamertemplate{mini frames}[box]
\setbeamersize{text margin left=0.5cm}
\setbeamersize{text margin right=0.5cm}
\setbeamertemplate{navigation symbols}{}


% Background
%~~~~~~~~~~~~~~~~~~
\defbeamertemplate*{background}{tntblack}
{
 \ifbeamercolorempty[bg]{background canvas}{}{\color{fg}\vrule width\paperwidth height\paperheight}%
}

\defbeamertemplate*{background}{tnt}
{
 \ifbeamercolorempty[bg]{background canvas}{}{\color{bg}\vrule width\paperwidth height\paperheight}%
}

\mode<all>

% \newcommand{\ps@tntblack}
% {%
% %\setbeamercolor{normal text}{fg=white,bg=red}
% \setbeamertemplate{background}[tntblack]
% \setbeamertemplate{footline}[empty]
% %\setbeamercolor{normal text}{parent=tnt normal text}
% %\setbeamercolor{normal text}{parent=tnt normal text inverse}
% %\setbeamertemplate{headline}[tnttitle]
% }%                                                                                                                                                          
% \newcommand{\ps@tntdefault}   
% {%
% \setbeamertemplate{background}[tnt]
% \setbeamertemplate{footline}[tnt]
% \setbeamertemplate{headline}[empty]
% }%   


%% Behaviour
%...........................................
% The still uncovered items (after \pause, \onslide, \item<+->, etc.) are invisible instead of transparent
\setbeamercovered{invisible}


%% Style
%...........................................
\usepackage{url}
%\usepackage{dsfont}
\usepackage{algorithmic}

\mode<presentation>

% ???
%\newif\ifbeamer@secheader
%\beamer@secheaderfalse
%
%\DeclareOptionBeamer{secheader}{\beamer@secheadertrue}
%\ProcessOptionsBeamer
%\ifbeamer@secheader\else\setbeamertemplate{headline}[default]\fi
% Tills' [Tantau] opinion: should be done in an inner theme, not here.

\mode<all>

\DeclareMathOperator*{\TimesOp}{\huge{\times}}

% Zapf Chancery font: the only way some person found of getting lowercase script letters
\DeclareFontFamily{OT1}{pzc}{}
\DeclareFontShape{OT1}{pzc}{m}{it}{<-> s * [1.200] pzcmi7t}{}
\DeclareMathAlphabet{\mathscr}{OT1}{pzc}{m}{it}
\usefonttheme[onlymath]{serif}

\def\qedsymbol{}


%\setbeamertemplate{headline}{sections light}
\setbeamertemplate{title page}[tntdefault]
\setbeamertemplate{frametitle}[luhstyle]
\setbeamertemplate{footline}[luhstyle]


% Title page with correct footline (a little hacky)
\newcommand{\rendertitlepage}{
    \setbeamertemplate{footline}[luhstylenonr]  % no frame number in footline
    \begin{frame}[noframenumbering]
        \titlepage
    \end{frame}
    \setbeamertemplate{footline}[luhstyle]  % from now on: frame number in footline
}

% Table of Content frame with correct footline
\newcommand{\rendertocframe}[1][Outline]{
    \setbeamertemplate{footline}[luhstylenonr]
    \begin{frame}[noframenumbering]
    \frametitle{#1}
    \tableofcontents  % use [pausesections] to show one element after one
    \end{frame}
    \setbeamertemplate{footline}[luhstyle]
}

\newcommand{\logoheight}{0.075\paperheight}