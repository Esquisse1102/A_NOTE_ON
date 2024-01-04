+++
title = "Early History"
+++

# $K$理論前史

## Grothendieck-Riemann-Roch

$K$理論の始まりは A.Grothendieck による Hirzebruch-Riemann-Roch の定理の一般化（\cite{BS}）にその起源を持つ．
そこでまず Hirzebruch-Riemann-Roch の定理について簡単に説明する．
$X$ を複素射影多様体とし，$E$ を $X$ 上の正則ベクトル束とする．
このとき，$E$ の Euler-Poincaré 標数
$$\chi(X,E) := \sum_{i=0}^{\dim X}(-1)^i \dim H^i(X,E)$$
は，$E$ のChern類と接束 $TX$ のChern類の"多項式"（を $X$ の基本類とペアリングをとった）$T(X,E)$ で表される，というのが Hirzebruch-Riemann-Roch の定理の主張である：

\theorem{Hirzebruch-Riemann-Roch の定理 (1954)}{
$$\chi(X,E) = T(X,E)$$
}

Grothendieck はこの定理の一般化にあたり，上の等式の両辺が持つ次の性質に注目した：

\proposition{$\chi$ と $T$ の加法性}{
ベクトル束の完全系列  $0 \rightarrow E' \rightarrow E \rightarrow E'' \rightarrow 0$ に対して，
$$\chi(E) = \chi(E') + \chi(E'')$$
$$T(E) = T(E') + T(E'')$$
が成り立つ．
}

上の命題は Euler-Poincaré 標数 $\chi$ と"多項式" $T$ がそれぞれベクトル束の完全系列に対して加法的であることを示している．
そこでベクトル束の完全列に対して加法的かつ"普遍的"なものを考え， $\chi$ や $T$ を「そこから $\Z$（あるいは $\Q$）への準同型であると考える」というのが Grothendieck のアイデアである．そしてこの"普遍的"な対象として考えられたのが今日（代数的）$K$群と呼ばれるアーベル群 $K(X)$ である[^1][^2]．

Grothendieck はこの$K$群を用いて，Hirzebruch-Riemann-Roch の定理を次の様に一般化した：

\theorem{Grothendieck-Riemann-Roch の定理（\cite{BS}）}{
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

[^1]: $K$理論の $K$ は類(classes)を表すドイツ語 Klassen から来ており，ドイツ語は Grothendieck の母語である（\cite{K2}）．
[^2]: $C(X)$ という記号が用いられなかったのは，$C(X)$ は通常 $X$ 上の連続関数環の意味で使われることが多く，それとの記号の重複を避けるためらしい（なお，Grothendieck は関数解析に関する論文で学位を取得している）（\cite{K1}）．

## Atiyah-Hirzebruch-Riemann-Roch

Atiyah と Hirzebrch は上の Grothendieck の結果を受けて，その"可微分版"を考えた（\cite{AH1}）．上述の Grothendieck-Riemann-Roch の定理に現れる代数多様体 $X$ の$K$群 $K(X)$ は $X$ 上の代数的ベクトル束を用いて定義されるが，それを位相的ベクトル束に変えたものを代えたものを可微分多様体 $X$ の（位相的）$K$群 $K(X)$ としたのである．
そして，Atiyah と Hirzebrch は以下の定理が成り立つことを示した．

\theorem{Atiyah-Hirzebruch-Riemann-Roch の定理（\cite{AH1}）}{
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

この定理の定式化および証明で用いたれた群 $K(X)$ は，その後 Atiyah と Hirzebruch によりそのコホモロジー的性質が詳しく研究され（\cite{AH2}），位相的$K$理論という名前で広く深く発展していくこととなる．

## Serre-Swan

上述のように，Atiyah と Hirzebruch による位相的$K$群の定義は Grothendieck による代数的$K$群のアナロジーとして与えられた．しかし実はこの位相的$K$群と代数的$K$群の間には単なるアナロジー以上の関係がある．それが本節で紹介する Serre-Swan の定理である．

可換環 $R$ に対して， ${\rm Spec}(R)$ とかくと，

## 参考文献

* \biblabel{AH1}{[AH1]} [AH1] Atiyah-Hirzebruch, Riemann-Roch theorems for differentiable manifolds, Bull. Amer. Math. Soc. 65(4) (1959), pp.276-281.
* \biblabel{AH2}{[AH2]} [AH2] Atiyah-Hirzebruch, Vector bundles and homogeneous spaces,  In: Differential geormetry. Proceedings of the Symposium in Pure Mathematics, 3 . AMS, Providence, RI, pp. 7-38.
* \biblabel{BS}{[BS]} [BS] Borel-Serre, Le théorème de Riemann-Roch, Bulletin de la Société Mathématique de France, Tome 86 (1958), pp. 97-136.
* \biblabel{K1}{[K1]} [K1] Karoubi, Lectures on K-theory, 2002.
* \biblabel{K2}{[K2]} [K2] Karoubi, K-theory. An elementary introduction, arXiv:math/0602082.