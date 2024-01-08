+++
title = "Early History"
+++

# $K$理論前史

$K$理論といったときに，現在では大きく二つのものに意味が分かれる．すなわち**代数的$K$理論**と**位相的$K$理論**である．

応用的見地からざっくりといえば代数幾何学や整数論と関係が深いものが代数的$K$理論であり，位相幾何学や作用素環論，物理学と関係が深いものが位相的$K$理論である．\\
（もちろん今後の発展によってはこれらの関係性が変化することはあり得る）．

これらの理論はどちらも各々の分野で欠かすことのできない重要な役割を担っているのであるが，実はこの二つの理論は同一の起源を持ち（たまたま名前が同じなのではない），その基礎的な部分での関係性はとても深い．

本稿の目的は，この$K$理論の起源やそれぞれの関係性についての解説を行うことである．なお本記事の執筆においては主に \cite{atiyah2000k} および \cite{karoubi2003lectures} を参考にした．

## Contents
\toc

## Grothendieck-Riemann-Roch

$K$理論の歴史は A.Grothendieck による Hirzebruch-Riemann-Roch の定理の一般化（$cf. $\cite{borel_serre1958theoreme}）にその起源を持つ．
そこでまず Hirzebruch-Riemann-Roch の定理について簡単に説明する．
$X$ を複素射影多様体とし，$E$ を $X$ 上の正則ベクトル束とする．
このとき，$E$ の Euler-Poincaré 標数
$$\chi(X,E) := \sum_{i=0}^{\dim X}(-1)^i \dim H^i(X,E)$$
は，$E$ のChern類と接束 $TX$ のChern類の"多項式"（を $X$ の基本類とでペアリングをとった）$T(X,E)$ で表される，というのが Hirzebruch-Riemann-Roch の定理の主張である：

\theorem{Hirzebruch-Riemann-Roch の定理 (1954)}{
$$\chi(X,E) = T(X,E)$$
}

Grothendieck はこの定理の一般化にあたり，上の等式の両辺が次の性質を持つことに注目した：

\proposition{$\chi$ と $T$ の加法性}{
ベクトル束の完全系列  $0 \rightarrow E' \rightarrow E \rightarrow E'' \rightarrow 0$ に対して，
$$\chi(E) = \chi(E') + \chi(E'')$$
$$T(E) = T(E') + T(E'')$$
が成り立つ．
}

上の命題は Euler-Poincaré 標数 $\chi$ と"多項式" $T$ がそれぞれベクトル束の完全系列に対して加法的であることを示している．
そこでベクトル束の完全列に対して加法的かつ"普遍的"なものを考え， 
@@center
**$\chi$ や $T$ を，その"普遍的"なものから $\Z$（あるいは $\Q$）への準同型であると考える**
@@
というのが Grothendieck のアイデアである．そしてこの"普遍的"な対象として考えられたのが今日（代数的）$K$群と呼ばれるアーベル群 $K(X)$ である[^1][^2]．

Grothendieck はこの$K$群を用いて，Hirzebruch-Riemann-Roch の定理を次の様に一般化した：

\theorem{Grothendieck-Riemann-Roch の定理（\cite{borel_serre1958theoreme}）}{
$X,Y$ を非特異代数多様体とし，$f:X \rightarrow Y$ を固有射とするとき，次の図式は可換である：

$$
  \begin{CD}
     K(X) @>{f_!}>> K(Y) \\
  @V{ {\rm ch}(\cdot){\rm td}(TX)}VV    @VV{ {\rm ch}(\cdot){\rm td}(TY)}V \\
     H^* (X,\Q)   @>>{f_*}>  H^* (Y,\Q)
  \end{CD}
$$

ただしここで，$f_!:K(X) \rightarrow K(Y)$ は$K$群の間に定まる押し出しであり，$f_*: H^* (X,\Q) \rightarrow H^* (Y,\Q)$ はコホモロジー群の間に定まる押し出しである．
}

なお，上の定理で $Y$ を一点としたものが Hirzebruch-Riemann-Roch の定理である．

このようにして Grothendieck により創始された$K$理論は，当初の Hirzebruch-Riemann-Roch の定理の一般化という役目を大きく超えて，現在ではモチーフの理論やゼータ関数の特殊値の話とも結びつき，広く深く発展している．


## Atiyah-Hirzebruch-Riemann-Roch

Atiyah と Hirzebrch は上記の Grothendieck の結果を受けて，その"可微分版"を考えた（$cf.$ \cite{atiyah_hirzebruch1959riemann}）．
上述の Grothendieck-Riemann-Roch の定理に現れる代数多様体 $X$ の$K$群 $K(X)$ は $X$ 上の代数的ベクトル束を用いて定義されるが，それを位相的ベクトル束に変えたものを代えたものを可微分多様体 $X$ の（位相的）$K$群 $K(X)$ としたのである．
そして，Atiyah と Hirzebrch は以下の定理が成り立つことを示した．

\theorem{Atiyah-Hirzebruch-Riemann-Roch の定理（\cite{atiyah_hirzebruch1959riemann}）}{
$X,Y$ を（ある条件を満たす）可微分多様体とし，$f:X \rightarrow Y$ を（ある条件を満たす）連続写像とする．このとき次の図式は可換である：

$$
  \begin{CD}
     K(X) @>{f_!}>> K(Y) \\
  @V{ {\rm ch}(\cdot){\rm td}(TX)}VV    @VV{ {\rm ch}(\cdot){\rm td}(TY)}V \\
     H^* (X,\Q)   @>>{f_*}>  H^* (Y,\Q)
  \end{CD}
$$

ただしここで，$f_!:K(X) \rightarrow K(Y)$ は$K$群の間に定まる押し出しであり，$f_*: H^* (X,\Q) \rightarrow H^* (Y,\Q)$ はコホモロジー群の間に定まる押し出しである．
}

この定理の定式化および証明で用いたれた群 $K(X)$ は，\cite{atiyah_hirzebruch1961vector} において Atiyah と Hirzebruch によりそのコホモロジー論的性質が詳しく研究された後，指数定理の証明や作用素環の分類理論，そして非可換幾何学へと位相的$K$理論の名の下で大きく発展していくことになる．現在では素粒子物理学や物性理論においても位相的$K$理論を用いた研究がなされており，その発展は今も続いている．


## Serre-Swan

上述のように，Atiyah と Hirzebruch による位相的$K$群の定義は Grothendieck による代数的$K$群のアナロジーとして与えられた．しかし実はこの位相的$K$群と代数的$K$群の間には単なるアナロジー以上の関係がある．それが本節で紹介する Serre-Swan の定理である．

コンパクト Hausdorff 空間 $X$ に対して，

可換環 $R$ に対して，その素イデアル全体のなす集合を ${\rm Spec}(R)$ とかくと，

## 参考文献

* \biblabel{atiyah2000k}{[A1]} [A1] {{ref atiyah2000k}}

* \biblabel{atiyah_hirzebruch1959riemann}{[AH1]} [AH1] {{ref atiyah_hirzebruch1959riemann}}

* \biblabel{atiyah_hirzebruch1961vector}{[AH2]} [AH2] {{ref atiyah_hirzebruch1961vector}}

* \biblabel{borel_serre1958theoreme}{[BS1]} [BS1] {{ref borel_serre1958theoreme}}

* \biblabel{karoubi2003lectures}{[K1]} [K1] {{ref karoubi2003lectures}}

* \biblabel{karoubi2006k}{[K2]} [K2] {{ref karoubi2006k}}


## 脚注

[^1]: $K$理論の $K$ は類(classes)を表すドイツ語 Klassen から来ており，ドイツ語は Grothendieck の母語である（\cite{karoubi2006k}）．
[^2]: $C(X)$ という記号が用いられなかったのは，$C(X)$ は通常 $X$ 上の連続関数環の意味で使われることが多く，それとの記号の重複を避けるためらしい（なお，Grothendieck は関数解析に関する論文で学位を取得している）（\cite{karoubi2003lectures}）．