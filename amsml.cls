% Ke Tran
% Informatics Institute
% Information and Language Processing Systems
% University of Amsterdam
% v.01, November 01, 2014
\ProvidesClass{amsml}
\LoadClass[11pt,letterpaper]{article}

% page setup
\setlength{\oddsidemargin}{0in} \setlength{\topmargin}{0in}
\setlength{\textheight}{9in} \setlength{\textwidth}{6.5in}
\topmargin 0pt \advance \topmargin by -\headheight \advance
\topmargin by -\headsep
\textheight 8.9in
\oddsidemargin 0pt \evensidemargin \oddsidemargin 
\marginparwidth 0.5pt

\textwidth 6.5in
\usepackage[T1]{fontenc}
%\usepackage{babel}
\usepackage{amsfonts,amssymb}
\usepackage{enumerate}
\usepackage{amsmath}
\usepackage{graphics}
\usepackage{verbatim}
\usepackage{longtable}
\usepackage{array}
\usepackage{bm}
\usepackage{graphicx}
\usepackage{caption}
\usepackage{subcaption}
\usepackage{float}
\usepackage{rotating}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% math notion


\newcommand{\Ex}{\mathbb{E}}

\newcommand{\To}{\rightarrow}
\newcommand{\e}{\epsilon}
\newcommand{\F}{\mathbb{F}}
\newcommand{\GF}{\mathsf{GF}}

\newcommand{\maxpr}{\text{\rm max-pr}}

\newcommand{\cclass}[1]{\mathbf{#1}}

\renewcommand{\P}{\cclass{P}}


\newtheorem{theorem}{Theorem}
\newtheorem{conjecture}[theorem]{Conjecture}
\newtheorem{definition}[theorem]{Definition}
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{proposition}[theorem]{Proposition}
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{claim}[theorem]{Claim}
\newtheorem{fact}[theorem]{Fact}
\newtheorem{openprob}[theorem]{Open Problem}
\newtheorem{remk}[theorem]{Remark}
\newtheorem{apdxlemma}{Lemma}
%\newtheorem{problem}[theorem]{Problem}

\newenvironment{remark}{\begin{remk}

\begin{normalfont}}{\end{normalfont}
\end{remk}}
\newtheorem{sublemma}[theorem]{Sublemma}


%%%%%%%%%%%%%%%%%%%% proof environments

\def\FullBox{\hbox{\vrule width 8pt height 8pt depth 0pt}}

\def\qed{\ifmmode\qquad\FullBox\else{\unskip\nobreak\hfil
\penalty50\hskip1em\null\nobreak\hfil\FullBox
\parfillskip=0pt\finalhyphendemerits=0\endgraf}\fi}

\def\qedsketch{\ifmmode\Box\else{\unskip\nobreak\hfil
\penalty50\hskip1em\null\nobreak\hfil$\Box$
\parfillskip=0pt\finalhyphendemerits=0\endgraf}\fi}

\newenvironment{proof}{\begin{trivlist} \item {\bf Proof:~~}}
  {\qed\end{trivlist}}

\newenvironment{sol}{\begin{trivlist} \item {\bf Solution:~~} \sf}
  {\qed\end{trivlist}}
  
\newenvironment{proofsketch}{\begin{trivlist} \item {\bf
Proof Sketch:~~}}
  {\qedsketch\end{trivlist}}

\newenvironment{proofof}[1]{\begin{trivlist} \item {\bf Proof
#1:~~}}
  {\qed\end{trivlist}}

\newenvironment{claimproof}{\begin{quotation} \noindent
{\bf Proof of claim:~~}}{\qedsketch\end{quotation}}

\newcounter{problem}
\newenvironment{problem}[1][]{\begin{trivlist} \item \refstepcounter{problem} {\bf Problem~\theproblem. #1}\rmfamily}
  {\end{trivlist}}
\newenvironment{extraproblem}[1][]{\begin{trivlist} \item \refstepcounter{problem} {\bf Problem~\theproblem$\star$. #1}\rmfamily}
  {\end{trivlist}}


%%%%%%%%%%%%%%%%%%%%%%% text macros
\newcommand{\etal}{{\it et~al.\ }}
\newcommand{\ie} {{\it i.e.,\ }}
\newcommand{\eg} {{\it e.g.,\ }}
\newcommand{\cf}{{\it cf.,\ }}

%%%%%%%%%%%%%%%%%%%%%%% general useful macros
\newcommand{\eqdef}{\mathbin{\stackrel{\rm def}{=}}}
\newcommand{\C}{{\mathbb{C}}}
\newcommand{\R}{{\mathbb R}}
\newcommand{\N}{{\mathbb{N}}}
\newcommand{\Z}{{\mathbb Z}}
\newcommand{\poly}{{\mathrm{poly}}}
\newcommand{\loglog}{{\mathop{\mathrm{loglog}}}}
\newcommand{\zo}{\{0,1\}}
\newcommand{\suchthat}{{\;\; : \;\;}}
\newcommand{\pr}[1]{\Pr\left[#1\right]}
\newcommand{\deffont}{\em}
\newcommand{\getsr}{\mathbin{\stackrel{\mbox{\tiny R}}{\gets}}}
\newcommand{\E}{\mathop{\mathrm E}\displaylimits}
\newcommand{\Cov}{\mathop{\mathrm Cov}\displaylimits}
\newcommand{\Var}{\mathop{\mathrm Var}\displaylimits}
\newcommand{\eps}{\varepsilon}


%%%%%%%%%%%%%%%%%%% macros particular to this course
% for author notes
\newcommand{\authnote}[2]{{ \bf [#1's Note: #2]}}
\newcommand{\Knote}[1]{{\authnote{Ke}{#1}}}


\newcommand{\Ideal}{\mathbf{Ideal}}
\newcommand{\Real}{\mathbf{Real}}
\newcommand{\mvec}{\overline{m}}
\newcommand{\trans}{\mathsf{T}}
\newcommand{\distNorm}{\mathcal{N}}

\newcommand{\vt}[1]{\bm{\mathbf{#1}}}

\newcommand\independent{\protect\mathpalette{\protect\independenT}{\perp}}
\def\independenT#1#2{\mathrel{\rlap{$#1#2$}\mkern2mu{#1#2}}}
\def\ci{\perp\!\!\!\perp}


\newenvironment{modenumerate}
  {\enumerate\setupmodenumerate}
  {\endenumerate}

\newif\ifmoditem
\newcommand{\setupmodenumerate}{%
  \global\moditemfalse
  \let\origmakelabel\makelabel
  \def\moditem##1{\global\moditemtrue\def\mesymbol{##1}\item}%
  \def\makelabel##1{%
    \origmakelabel{##1\ifmoditem\rlap{\mesymbol}\fi\enspace}%
    \global\moditemfalse}%
}


% end of macros
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\lecture}[4]{
   \pagestyle{myheadings}
   \thispagestyle{plain}
   \newpage
   \setcounter{page}{1}
   \noindent
   \begin{center}
   \framebox{
      \vbox{\vspace{2mm}
    \hbox to 6.28in { {\bf Machine Learning 2 \hfill Due: #4} }
       \vspace{6mm}
       \hbox to 6.28in { {\Large \hfill #1  \hfill}  }
       \vspace{6mm}
       \hbox to 6.28in { {Instructor: #2 \hfill Email: #3} }
      \vspace{2mm}}
   }
   \end{center}
   \markboth{#1}{#1}
   \vspace*{4mm}
}
