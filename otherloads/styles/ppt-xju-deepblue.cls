%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% =============================个人自用文档样式============================

\ProvidesClass{ppt-xju-deepblue}[2021/11/24 - v1.0]

%=============================定义文档类型============================

\LoadClass[aspectratio=169, 10pt, utf8, mathserif]{ctexbeamer} 
\usepackage{otherloads/packages/ppt-xju-packages}                                            %加载.sty文件，其他各种包。

\setstretch{1.2}                   				                              %设置行间距，需要依赖\usepackage{setspace}            
\usepackage{indentfirst}                                                          %引入包，用于ppt首行缩进
\setlength{\parindent}{2em}                                                 %使用首行缩进2字符。如果某段不想首行缩进，在段前加入\oindent命令。
\setbeamerfont{footnote}{size=\tiny}                                 %设置脚注引用文献的字体大小
\setbeamerfont{frametitle}{size=\normalsize }                 %改变frametilte字体大小,
\setbeamerfont{framesubtitle}{size=\small } 
%由小到大依次为：\tiny \scriptsize \footnotesize \small \normalsize \large \Large \LARGE \huge \Huge


%==========================设置页脚格式=================================

\setbeamertemplate{footline}{
	\leavevmode
	\hbox{
		\begin{beamercolorbox}[wd=0.3\paperwidth,ht=2.25ex,dp=1ex,center]{author in head/foot}%
			\usebeamerfont{author in head/foot}\insertshortauthor \quad (\insertshortinstitute)
		\end{beamercolorbox}
		\begin{beamercolorbox}[wd=0.4\paperwidth,ht=2.25ex,dp=1ex,center]{title in head/foot}%
			\usebeamerfont{title in head/foot}\insertshorttitle
		\end{beamercolorbox}
		\begin{beamercolorbox}[wd=0.3\paperwidth,ht=2.25ex,dp=1ex,center]{date in head/foot}%
			\usebeamerfont{date in head/foot}\insertshortdate{} \quad
			\insertframenumber{} / \inserttotalframenumber
	\end{beamercolorbox}}
}


%=============================设置主题样式和主题色================================

\usetheme{AnnArbor}                                                 %全局主题
%Berlin,cambridgeUS,Darmstadt,Frankfurt,Ilmenau,Hannover，Berkeley，EastLansing
\useinnertheme{circles}                                              %内部主题                                        
%内部主题，内部主题主要控制的是标题页，列表项目、定理环境、图表环境、脚注在一帧内的内容格式(做幻灯片的时候，其实一般不建议使用脚注)。预定义的内部主题格式有：default、circles、rounded、rectangles等。
\useoutertheme{miniframes}                                      %外部主题，常用：default、miniframes、tree、smoothtree
%外部主题，\useoutertheme外部主题主要控制的是幻灯片顶部尾部的信息栏、边栏、图标、帧标题等一帧之外的格式。预定义的外部主题有default、infolines、miniframes、tree、smoothtree等。
\usecolortheme{spruce}                                                 %色彩主题，该色调很多不显示底栏
%色彩主题，\usecolortheme色彩主题控制各个部分的色彩。预定义的色彩主题包括default、albatross、beaver、beetle、crane、dolphine、dove、fly、lily、orchid、rose、seagull、seahorse、sidebartab、structure、whale、wolverine等。
\usefonttheme{serif}                                                         %字体主题
%字体主题，\usefonttheme字体主题则控制幻灯片的整体字体风格。预定义的beamer字体主要包括default、professionalfonts、serif、structurebold、structureitalicserif、structuresmallcapsserif等。其中默认字体主题default的效果是整个幻灯片使用无衬线字体，这是多数幻灯片的选择；serif主题则是衬线字体，不过此时最好使用较大的字号和较粗的字体；professionalfonts不对字体有特别的设置，需要使用另外的专门的宏包进行设置；structure开头的几个主题则对beamer中的几个结构有特别设置。


% ============================全局模式下的各项的色彩设置==========================

\setbeamercolor{author}{fg=black}  %首页作者字体颜色
\setbeamercolor{date}{fg=black}     %首页时间字体颜色

\setbeamertemplate{itemize items}{\color{zdyred}$\bullet$}                                     %项目编号
\setbeamercolor{section number projected}{bg=gray!20!,fg=zdyblue}                       %目录圆圈编号

\setbeamercolor{titlelike}{bg=gray!35!,fg=zdyblue}                                                     %首页标题页的标题 设置底框颜色及字体颜色
\setbeamercolor{frametitle}{bg=white,fg=zdyblue}                                                     %每页的 标题的底框和字体颜色设置

\setbeamercolor{palette secondary}{bg=gray!50!,fg=zdyblue}                                 % 底部左边条带和顶部第二个条带的字体和背景颜色  
\setbeamercolor{palette tertiary}{bg=zdyblue,fg=white}                                           %底部中间条带和顶部第一个条带的字体和背景颜色
\setbeamercolor{palette primary}{bg=gray!50!,fg=zdyblue}                                    %底部右边条带的字体和背景颜色


%\setbeamercolor{palette quaternary}{bg=gray!10!,fg=darkblue}                         %暂时不知道设置谁

%\definecolor{zdyblue}{RGB}{19,63,127}                   
\definecolor{zdyblue}{rgb}{0.0, 0.18, 0.33} 
%\definecolor{orange}{rgb}{1,0.5,0}                          % 1.rgb
%\definecolor{orange}{RGB}{255,127,0}                 % 2.RGB
%\definecolor{zdyred}{HTML}{A80000}                 % 3.HTML
%\definecolor{orange}{cmyk}{0,0.5,1,0}                  % 4.cmyk


%====================设置logo=================================
\pgfdeclareimage[height=1.0cm]{university-logo}{otherloads/logo/logoxjublue}                   %若需要，只需将学校的LOGO放到同一文件夹下即可
\logo{\vspace{9.5cm}\pgfuseimage{university-logo}}          
                                      
%\logo{\pgfuseimage{university-logo}}                                                                          %为在右下角

%====================设置背景==============================
\setbeamertemplate{background}{\includegraphics[height=\paperheight]{otherloads/background/indistinctbgxjublue}}    %设置背景，文件夹内需要有bg.jpg图片

\setbeamertemplate{navigation symbols}{}                                                                    %取消导航
%====================设置用Acrobat打开就会全屏显示====================
\hypersetup{pdfpagemode=FullScreen}


% ====================插图路径设置==============================

\graphicspath{{figures/}}                                                                                               %图片所在的目录
