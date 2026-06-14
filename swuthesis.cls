% ============================================
% 西南大学本科毕业论文（设计）LaTeX 模板 v2.0
% 严格对照《西南大学本科毕业论文（设计）规范》
% 编译：xelatex → biber → xelatex → xelatex
% ============================================
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swuthesis}[2026/06/14 v2.0 SWU Thesis]

% ---- 基础 ----
\LoadClass[zihao=-4,a4paper,fontset=none]{ctexart}

% ---- 页面 ----
\RequirePackage{geometry}
\geometry{paper=a4paper,left=25mm,right=25mm,top=30mm,bottom=25mm,bindingoffset=10mm}

% ---- 字体 ----
\setmainfont{Times New Roman}
\setCJKmainfont{simsun.ttf}[Path=./fonts/,
  BoldFont=simsun.ttf,
  BoldFeatures={FakeBold=1.8}]
\setCJKsansfont{simhei.ttf}[Path=./fonts/]
\setCJKmonofont{simfang.ttf}[Path=./fonts/]
\setCJKfamilyfont{simkai}{simkai.ttf}[Path=./fonts/]
\setCJKfamilyfont{simfang}{simfang.ttf}[Path=./fonts/]
\setCJKfamilyfont{simhei}{simhei.ttf}[Path=./fonts/]
\setCJKfamilyfont{fzhei}{fzhtgbk.ttf}[Path=./fonts/]
\setCJKfamilyfont{hwzs}{hwzs.ttf}[Path=./fonts/]
\setCJKfamilyfont{simsunbold}{simsun.ttf}[Path=./fonts/,FakeBold=1.8]
\XeTeXlinebreaklocale "zh"
\XeTeXlinebreakskip = 0pt plus 1pt

% ---- 正文行距 + 首行缩进 ----
\RequirePackage{setspace}
\AtBeginDocument{\setstretch{1.5}}
\setlength{\parindent}{2em}

% ---- 宏包 ----
\RequirePackage{xeCJKfntef,array,graphicx,float,amsmath,amssymb,caption,booktabs,longtable,enumitem,titlesec,titletoc}
\RequirePackage{ragged2e}  % 两端对齐

% ---- 封面下划线 ----
\def\FixedLenthUnderline[#1]#2{\CJKunderline{\hbox to #1{\hfill#2\hfill}}}
\def\LenthFixedUnderline{\@ifnextchar[\FixedLenthUnderline\CTEXunderline}

% ---- 信息变量 ----
\newcommand{\swucollege}[1]{\gdef\@swucollege{#1}}
\newcommand{\swumajor}[1]{\gdef\@swumajor{#1}}
\newcommand{\swugrade}[1]{\gdef\@swugrade{#1}}
\newcommand{\swuauthorid}[1]{\gdef\@swuauthorid{#1}}
\newcommand{\swuauthor}[1]{\gdef\@swuauthor{#1}}
\newcommand{\swuadvisor}[1]{\gdef\@swuadvisor{#1}}
\newcommand{\swuentitle}[1]{\gdef\@swuentitle{#1}}
\newcommand{\swuabstract}[1]{\gdef\@swuabstract{#1}}
\newcommand{\swuenabstract}[1]{\gdef\@swuenabstract{#1}}
\newcommand{\swukeywords}[1]{\gdef\@swukeywords{#1}}
\newcommand{\swuenkeywords}[1]{\gdef\@swuenkeywords{#1}}
\newcommand{\swuencollege}[1]{\gdef\@swuencollege{#1}}
\newcommand{\swuenname}[1]{\gdef\@swuenname{#1}}
\newcommand{\swudate}[1]{\gdef\@swudate{#1}}
\swucollege{学院}\swumajor{专业}\swugrade{年级}\swuauthorid{学号}\swuauthor{姓名}\swuadvisor{教师}
\swudate{2029年5月}\swuentitle{English Title}\swuenname{Name}
\swuencollege{College}\swuabstract{}\swuenabstract{}\swukeywords{}\swuenkeywords{}

% ============================================
% 封面（附件1）
% ============================================
\renewcommand\maketitle{%
    \cleardoublepage\thispagestyle{empty}
    % 左上角校徽 + 右上角单位代码
    \begin{minipage}[t]{0.45\textwidth}
        \includegraphics[width=2.6cm]{swu_emblem.jpeg}
    \end{minipage}%
    \begin{minipage}[t]{0.55\textwidth}
        \raggedleft\zihao{4}单位代码：10635
    \end{minipage}
    \vspace{8pt}
    \begin{center}
        {\includegraphics[width=5cm]{SWULogo.png}}\\[6pt]
        {\zihao{1}\sffamily 本科毕业论文（设计）}\\[50pt]
        {\zihao{2}\CJKfamily{hwzs}%
         题\hspace{1em}目\LenthFixedUnderline[11cm]{\@title}}\\[30pt]
        {\zihao{-2}\CJKfamily{hwzs}\renewcommand{\arraystretch}{1.5}
        \begin{tabular}{rl}
            学\hspace{3em}院   & \LenthFixedUnderline[7cm]{\@swucollege}\\[4pt]
            专\hspace{3em}业   & \LenthFixedUnderline[7cm]{\@swumajor}\\[4pt]
            学\hspace{3em}号   & \LenthFixedUnderline[7cm]{\@swuauthorid}\\[4pt]
            姓\hspace{3em}名   & \LenthFixedUnderline[7cm]{\@swuauthor}\\[4pt]
            指\;导\;教\;师       & \LenthFixedUnderline[7cm]{\@swuadvisor}\\[4pt]
            答\;辩\;日\;期       & \LenthFixedUnderline[4cm]{}\;年\;\LenthFixedUnderline[1cm]{}\;月\;\LenthFixedUnderline[1cm]{}\;日\\
        \end{tabular}}\\[36pt]
        {\zihao{3}20\qquad 年\qquad 月}
    \end{center}
    \clearpage
}

% ============================================
% 独创声明（附件2）
% ============================================
\newcommand{\makedeclaration}{%
    \cleardoublepage\thispagestyle{empty}
    \begin{center}{\zihao{3}\sffamily\bfseries 独~创~声~明}\end{center}
    \vspace{18pt}
    {\zihao{-4}\parindent=2em
    \par
    本人郑重声明：所呈交的毕业论文（设计），是本人在指导老师的指导下，独立进行研究工作所取得的成果，成果不存在知识产权争议。\par
    尽我所知，除文中已经注明引用的内容外，本论文（设计）不含任何其他个人或集体已经发表或撰写过的作品成果。对本文的研究做出重要贡献的个人和集体均已在文中以明确方式标明。\par
    声明的法律后果由本人承担。\par}
    \vspace{24pt}
    {\zihao{-4}\hfill 作者签名:\LenthFixedUnderline[4cm]{}\par}
    \vspace{6pt}
    {\zihao{-4}\hfill \hspace{2cm}年\hspace{1cm}月\hspace{1cm}日\par}
    \vspace{40pt}
    \begin{center}{\zihao{3}\sffamily\bfseries 毕业论文（设计）使用授权声明}\end{center}
    \vspace{18pt}
    {\zihao{-4}\parindent=2em
    \par
    本人完全了解西南大学关于收集、保存、使用毕业论文（设计）的规定。\par
    本人愿意按照学校要求提交论文（设计）的印刷本和电子版，同意学校保存论文（设计）的印刷本和电子版，或采用影印、数字化或其它复制手段保存论文（设计）；同意学校在不以营利为目的的前提下，建立目录检索与阅览服务系统，公布论文（设计）的部分或全部内容，允许他人依法合理使用。\par
    （保密论文在解密后遵守此规定）\par}
    \vspace{24pt}
    {\zihao{-4}\hfill 作者签名:\LenthFixedUnderline[4cm]{}\par}
    \vspace{6pt}
    {\zihao{-4}\hfill \hspace{2cm}年\hspace{1cm}月\hspace{1cm}日\par}
    \clearpage
}

% ============================================
% 目录（附件3）
% ============================================
\newcommand{\makecontents}{%
    \cleardoublepage\pagenumbering{Roman}\setcounter{page}{1}
    \vspace*{\baselineskip}
    {\centering\zihao{3}\sffamily 目\quad 录\par}
    \vspace{\baselineskip}
    \renewcommand{\contentsname}{}
    {\zihao{-4}\setstretch{1.5}
    \titlecontents{section}[0pt]{}{第\,\thecontentslabel\,章\enspace}{}{\titlerule*[8pt]{.}\contentspage}
    \titlecontents{subsection}[0pt]{}{\thecontentslabel\enspace}{}{\titlerule*[8pt]{.}\contentspage}
    \titlecontents{subsubsection}[0pt]{}{\thecontentslabel\enspace}{}{\titlerule*[8pt]{.}\contentspage}
    \tableofcontents}
    \clearpage
}

% ============================================
% 中英文摘要（附件4）
% ============================================
\newcommand{\makeabstract}{%
    \cleardoublepage\pagenumbering{arabic}\setcounter{page}{1}\parindent=0pt
    \addcontentsline{toc}{section}{摘\quad 要}
    \begin{center}
        {\zihao{3}\CJKfamily{fzhei}\@title}\\[12pt]
        {\zihao{-4}\@swuauthor}\\[4pt]
        {\zihao{5}西南大学\@swucollege，重庆~400715}\\[12pt]
    \end{center}
    {\zihao{5}\CJKfamily{simfang}\noindent\textbf{摘\enspace 要：}\@swuabstract\par}
    \vspace{12pt}
    {\zihao{5}\noindent\textbf{关键词：}\@swukeywords\par}
    \vspace{30pt}
    \addcontentsline{toc}{section}{Abstract}
    \begin{center}
        {\zihao{4}\bfseries\@swuentitle}\\[12pt]
        {\zihao{5}\@swuenname}\\[4pt]
        {\zihao{-5}\@swuencollege, Southwest University, Chongqing~400715, PR China}\\[12pt]
    \end{center}
    {\zihao{5}\noindent\textbf{Abstract:} \@swuenabstract\par}
    \vspace{12pt}
    {\zihao{5}\noindent\textbf{Key words:} \@swuenkeywords\par}
    \clearpage\setlength{\parindent}{2em}
}

% ============================================
% 标题格式（正文用）
% ============================================
% 一级标题（章）：黑体四号居中
\titleformat{\section}{\centering\zihao{4}\CJKfamily{simhei}}{第\,\thesection\,章}{1em}{}
\titlespacing{\section}{0pt}{*0.5}{*0.5}
% 二级标题（节）：黑体小四号
\titleformat{\subsection}{\zihao{-4}\CJKfamily{simhei}}{\thesubsection}{1em}{}
\titlespacing{\subsection}{0pt}{*0.5}{*0.5}
% 三级标题（条）：宋体小四号加粗（simsunbold = simsun FakeBold=1.8，轻于黑体）
\titleformat{\subsubsection}{\zihao{-4}\CJKfamily{simsunbold}}{\thesubsubsection}{1em}{}
\titlespacing{\subsubsection}{0pt}{*0.5}{*0.5}

% ---- 图/表/公式编号（按章排序） ----
\numberwithin{figure}{section}
\numberwithin{table}{section}
\numberwithin{equation}{section}
\renewcommand{\theequation}{\thesection-\arabic{equation}}
\captionsetup{labelsep=quad,font={small},skip=6pt,position=above}

% ---- 参考文献（著者-出版年制，gb7714-2015） ----
\RequirePackage[backend=biber,style=gb7714-2015,sorting=none,giveninits=true]{biblatex}

\newcommand{\makereference}{%
    \cleardoublepage
    \addcontentsline{toc}{section}{参考文献}
    \begingroup
    \zihao{5}\setstretch{1.0}\parindent=0pt
    \printbibliography[title={参考文献}]
    \endgroup
}

% ---- 致谢 ----
\newcommand{\makethanks}[1]{%
    \cleardoublepage
    \addcontentsline{toc}{section}{致\quad 谢}
    \parindent=0pt
    {\zihao{-4}\noindent\textbf{致\quad 谢}}\\[12pt]
    {\zihao{5}\setstretch{1.0}\setlength{\parindent}{2em}#1\par}
}

% ---- 附录 ----
\newcommand{\makeappendix}{%
    \cleardoublepage
    \addcontentsline{toc}{section}{附\quad 录}
    {\zihao{-2}\sffamily\noindent 附\quad 录}\\[12pt]
}

% ---- hyperref / 页面样式 ----
\RequirePackage{hyperref}
\hypersetup{colorlinks=true,linkcolor=black,citecolor=black,urlcolor=black}
\pagestyle{plain}

% ============================================
% 便捷命令
% ============================================
% 插图：\fig{文件}{宽度比例}{中文标题}{英文标题}{标签}
\newcommand{\fig}[5]{%
    \begin{figure}[H]\centering
        \includegraphics[width=#2\textwidth]{#1}
        \caption{\zihao{5}#3}
        \addtocounter{figure}{-1}
        \renewcommand{\figurename}{Fig.}
        \caption{\zihao{5}#4}
        \renewcommand{\figurename}{图}
        \label{#5}
    \end{figure}%
}
% 三线表（表头在上）：\tab{列格式}{表体}{中文标题}{英文标题}{标签}
\newcommand{\tab}[5]{%
    \begin{table}[H]\centering
        \caption{\zihao{5}#3}
        \addtocounter{table}{-1}
        \renewcommand{\tablename}{Table}
        \caption{\zihao{5}#4}
        \renewcommand{\tablename}{表}
        \label{#5}
        \begin{tabular}{#1}\toprule #2 \bottomrule\end{tabular}
    \end{table}%
}
% 上标引用
\newcommand{\citeup}[1]{\textsuperscript{\cite{#1}}}

\endinput
