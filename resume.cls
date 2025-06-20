%----------------------------------------------------------------------------------------
%	CLASS OPTIONS AND REQUIRED PACKAGES
%----------------------------------------------------------------------------------------

\ProvidesClass{oscar-resume}[2014/04/30 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}

\usepackage{siunitx}

\usepackage[hmargin=1.25cm, vmargin=0.75cm]{geometry} % Specifies horizontal and vertical page margins
\usepackage{hyperref} % Required for links
%\hypersetup{
%    colorlinks=true,
%    urlcolor=blue,
% }

%----------------------------------------------------------------------------------------
%	COLORS
%----------------------------------------------------------------------------------------

\usepackage[usenames,dvipsnames]{xcolor} % Required for custom colors

\definecolor{primary}{HTML}{2b2b2b} % The primary document color for content text
\definecolor{headings}{HTML}{6A6A6A} % The color of the large sections
\definecolor{subheadings}{HTML}{333333} % The color of subsections and places worked/studied
\definecolor{date}{HTML}{666666} % The color used for the Last Updated text at the top right

%----------------------------------------------------------------------------------------
%	FONTS
%----------------------------------------------------------------------------------------

% \usepackage{fontspec} % Required for specifying custom fonts in XeLaTeX

%\setmainfont[Color=primary, Path = fonts/lato/,BoldItalicFont=Lato-RegIta,BoldFont=Lato-Reg,ItalicFont=Lato-LigIta]{Lato-Lig} % The primary font for content text; defines bold, italic and bold-italic as well

%\setsansfont[Scale=MatchLowercase,Mapping=tex-text, Path = fonts/raleway/]{Raleway-ExtraLight} % The font used where \sfffamily is called

%----------------------------------------------------------------------------------------
%	LAST UPDATED COMMAND
%----------------------------------------------------------------------------------------

\usepackage[absolute]{textpos} % Required for positioning the Last Updated text at the top right of the page
\usepackage[UKenglish]{isodate} % Prints the Last Updated date in UK English format

\setlength{\TPHorizModule}{0.01\paperwidth} % Sets the units for the horizontal position used in the \begin{textblock} argument
\setlength{\TPVertModule}{0.01\paperwidth} % Sets the units for the vertical position used in the \begin{textblock} argument
\newcommand{\lastupdated}{ % Create a new command for printing the Last Updated text
\begin{textblock}{25}(75,2) % The position of the Last Updated text on the page (75% of the page across, 2% down)
\color{date}\fontsize{8pt}{10pt}\selectfont % Text styling of the text
%\fontspec[Path = fonts/raleway/]{Raleway-ExtraLight}
Last Updated on \today % Last Updated text
\end{textblock}}

%----------------------------------------------------------------------------------------
%	MAIN HEADING COMMAND
%----------------------------------------------------------------------------------------

\newcommand{\namesection}[3]{ % Defines the command for the main heading
\centering{ % Center the name
\fontsize{40pt}{60pt} % Font size
\selectfont #1 % First name font
%\fontspec[Path = fonts/lato/]{Lato-Hai}
\selectfont #2 % Last name font
%\fontspec[Path = fonts/lato/]{Lato-Lig}
} \\[5pt] % Whitespace between the name and contact information
\centering{ % Center the contact information
\color{headings} % Use the headings color
\fontsize{11pt}{14pt}\selectfont #3} % Contact information font
%\fontspec[Path = fonts/raleway/]{Raleway-Medium}
\noindent\makebox[\linewidth]{\color{headings}\rule{\paperwidth}{0.4pt}} % Horizontal rule
\vspace{-10pt} % Reduce whitespace after the rule slightly
}

%----------------------------------------------------------------------------------------
%	SECTION TITLE STYLING AND SPACING
%----------------------------------------------------------------------------------------

\usepackage{titlesec} % Required for customizing section/subsection/etc titles
\usepackage{xspace}

\titlespacing{\section}{0pt}{0pt}{0pt} % Removes the spacing around the main section titles
\titlespacing{\subsection}{0pt}{0pt}{0pt} % Removes the spacing around the subsections
\newcommand{\sectionspace}{\vspace{8pt}} % Defines a command to add a set amount of space after sections and subsections
\newcommand{\smallsectionspace}{\vspace{4pt}} % Defines a command to add a set amount of space after sections and subsections

\titleformat{\section}{ % Customize the large section titles
\color{headings}\scshape\fontsize{16pt}{24pt}\selectfont \raggedright\uppercase}{}{0em}{}
%\fontspec[Path = fonts/lato/]{Lato-Lig}

\titleformat{\subsection}{ % Customize the subsections and places worked/studied titles
\color{subheadings}\raggedright\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase}{}{0em}{}
%\fontspec[Path = fonts/lato/]{Lato-Bol}

\newcommand{\runsubsection}[1]{ % Used for creating subsections where a description is required on the same line
\color{subheadings}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase {#1} \normalfont}
%\fontspec[Path = fonts/lato/]{Lato-Bol}

\newcommand{\descript}[1]{ % Used for describing the subsection either on the same line or underneath
\color{subheadings}\raggedright\scshape\fontsize{11pt}{13pt}\selectfont {#1 \\} \normalfont}
%\fontspec[Path = fonts/raleway/]{Raleway-Medium}

\newcommand{\location}[1]{ % Used for specifying a duration and/or location under a subsection
\color{headings}\raggedright\fontsize{10pt}{12pt}\selectfont\bfseries {#1\\} \normalfont}
%\fontspec[Path = fonts/raleway/]{Raleway-Medium}

%----------------------------------------------------------------------------------------
%	SECTION TITLE STYLING AND SPACING
%----------------------------------------------------------------------------------------

\newenvironment{tightitemize} % Defines the tightitemize environment which modifies the itemize environment to be more compact
{\vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}
{\end{itemize}\vspace{-\topsep}}

\newcommand{\cogent}{\textsc{Cogent}\xspace}
\newcommand{\aws}{\textsc{AWS}\xspace}
\newcommand{\rds}{\textsc{RDS}\xspace}
\newcommand{\jira}{\textsc{Jira}\xspace}
\newcommand{\conf}{\textsc{Confluence}\xspace}
\newcommand{\spring}{\textsc{SpringBoot}\xspace}
\newcommand{\cucumber}{\textsc{Cucumber/Selenium}\xspace}
\newcommand{\rest}{\textsc{REST}\xspace}
\newcommand{\clang}{\textsc{C}\xspace}
\newcommand{\mynumber}{\textsc{0\num{400533516}}\xspace}
\newcommand{\linux}{\textsc{GNU/Linux}\xspace}
\newcommand{\postgres}{\textsc{Postgres}\xspace}
\newcommand{\jpa}{\textsc{JPA/Hibernate}\xspace}
\newcommand{\ansible}{\textsc{Ansible}\xspace}
\newcommand{\android}{\textsc{Android Studio}\xspace}
\newcommand{\git}{\textsc{Git}\xspace}
\newcommand{\docker}{\textsc{Docker}\xspace}
\newcommand{\jenkins}{\textsc{Jenkins}\xspace}
\newcommand{\kotlin}{\textsc{Kotlin}\xspace}
\newcommand{\python}{\textsc{Python}\xspace}
\newcommand{\java}{\textsc{Java}\xspace}
\newcommand{\cpp}{\textsc{C++}\xspace}
\newcommand{\haskell}{\textsc{Haskell}\xspace}
\newcommand{\bash}{\textsc{Bash}\xspace}
\newcommand{\react}{\textsc{React.JS}\xspace}
\newcommand{\conan}{\textsc{Conan}\xspace}
\newcommand{\cargo}{\textsc{Cargo}\xspace}
\newcommand{\debian}{\textsc{Debian}\xspace}
\newcommand{\cppstd}{\textsc{std-17}\xspace}
\newcommand{\dolbyio}{\textsc{dolby.io}\xspace}
\newcommand{\dvcs}{\textsc{DVCS}\xspace}
\newcommand{\capi}{\textsc{CAPI}\xspace}
\newcommand{\voip}{\textsc{VOIP}\xspace}
\newcommand{\asyncio}{\textsc{async.io}\xspace}
\newcommand{\pytest}{\textsc{pytest}\xspace}
\newcommand{\gdb}{\textsc{GDB}\xspace}
\newcommand{\oats}{\textsc{OATs}\xspace}
\newcommand{\rtp}{\textsc{RTP}\xspace}
\newcommand{\cmake}{\textsc{CMake}\xspace}
\newcommand{\xml}{\textsc{HTML/XML}\xspace}
\newcommand{\json}{\textsc{JSON/YAML}\xspace}
\newcommand{\postgresql}{\textsc{PostgreSQL}\xspace}
\newcommand{\vhdl}{\textsc{VHDL}\xspace}
\newcommand{\verilog}{\textsc{Verilog}\xspace}
\newcommand{\mips}{\textsc{MIPS}\xspace}
\newcommand{\isabelle}{\textsc{Isabelle}\xspace}
\newcommand{\matlab}{\textsc{MATLAB}\xspace}
\newcommand{\prolog}{\textsc{Prolog}\xspace}
\newcommand{\javascript}{\textsc{Javascript}\xspace}
\newcommand{\typescript}{\textsc{Typescript}\xspace}
\newcommand{\boto}{\textsc{Boto}\xspace}
\newcommand{\ectwo}{\textsc{EC2}\xspace}
\newcommand{\googletest}{\textsc{GTest}\xspace}
\newcommand{\vagrant}{\textsc{Vagrant}\xspace}
\newcommand{\nodejs}{\textsc{Node.JS}\xspace}
\newcommand{\gitlab}{\textsc{GitLab}\xspace}
\newcommand{\css}{\textsc{CSS}\xspace}
\newcommand{\junit}{\textsc{JUnit}\xspace}
%\newcommand{\html}{\textsc{HTML}\xspace}
%\newcommand{\xml}{\textsc{XML}\xspace}
%\newcommand{\json}{\textsc{JSON}\xspace}
%\newcommand{\yaml}{\textsc{YAML}\xspace}
\newcommand{\rust}{\textsc{Rust}\xspace}
\newcommand{\actix}{\textsc{ActixWeb}\xspace}
\newcommand{\go}{\textsc{Go}\xspace}
\newcommand{\jnciaJunos}{\textsc{JNCIA-Junos}\xspace}
\newcommand{\jnciaDevOps}{\textsc{JNCIA-DevOps}\xspace}
\newcommand{\warp}{\textsc{Warp17}\xspace}
\newcommand{\eventblock}{\textsc{EventBlock}\xspace}
\newcommand{\apexevent}{\textsc{ApexEvent}\xspace}
\newcommand{\nita}{\textsc{NITA}\xspace}
\newcommand{\junos}{\textsc{JunOS}\xspace}
\newcommand{\jinja}{\textsc{Jinja2}\xspace}
\newcommand{\yaml}{\textsc{YAML}\xspace}
\newcommand{\mongo}{\textsc{MongoDB}\xspace}
\newcommand{\rocksdb}{\textsc{RocksDB}\xspace}
\newcommand{\cuda}{\textsc{CUDA}\xspace}
