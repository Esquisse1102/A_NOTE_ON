<!--
Add here global page variables to use throughout your website.
-->
+++
author = "Esquisse1102"
mintoclevel = 2
prepath= "A_NOTE_ON"

# Add here files or directories that should be ignored by Franklin, otherwise
# these files might be copied and, if markdown, processed by Franklin which
# you might not want. Indicate directories by ending the name with a `/`.
# Base files such as LICENSE.md and README.md are ignored by default.
ignore = ["node_modules/",r".*_.md"]

# RSS (the website_{title, descr, url} must be defined to get RSS)
generate_rss = true
website_title = "A_NOTE_ON"
website_descr = "Esquisse's mathematical notes"
website_url   = "https://esquisse1102.github.io/A_NOTE_ON/"
+++

<!--
Add here global latex commands to use throughout your pages.
-->
\newcommand{\R}{\mathbb R}
\newcommand{\C}{\mathbb C}
\newcommand{\Z}{\mathbb Z}
\newcommand{\Q}{\mathbb Q}
\newcommand{\Hom}{\mathrm{Hom}}
\newcommand{\Spec}{\mathrm{Spec}}
\newcommand{\Spinc}{\mathrm{Spin^c}}
\newcommand{\ra}{\rightarrow}
\newcommand{\scal}[1]{\langle #1 \rangle}


<!-- 定理環境 -->
\newcommand{\definition}[2]{
@@definition **定義** (!#1): \\
!#2
@@
}

\newcommand{\example}[2]{
@@example **例** (!#1): \\
!#2
@@
}

\newcommand{\theorem}[2]{
@@theorem **定理** (!#1): \\
!#2
@@
}

\newcommand{\proposition}[2]{
@@proposition **命題** (!#1): \\
!#2
@@
}

\newcommand{\corollary}[2]{
@@corollary **系** (!#1): \\
!#2
@@
}


\newcommand{\remark}[2]{
@@remark **注意** (!#1): \\
!#2
@@
}

\newcommand{\proof}[1]{
@@proof **Proof.**\\ 
!#1
@@
\\ 
}




<!-- 中央寄席 -->
\newcommand{\center}[1]{
    ~~~
    <div style="text-align:center;font-weight:bold">
    !#1
    </div>
    ~~~
}