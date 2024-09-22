# $K$理論の基本

この節では位相的$K$理論に関する基礎的な内容をまとめる．
ベクトル束については既知とし，各命題の証明も省略する，
内容としては主に[A1]の2.4節までと[Muk]の1.7節までが該当する．


## $K$群と被約$K$群

$X$ をコンパクト Hausdorff 空間とする．
\[
    V(X) := \{X \ 上のベクトル束の同型類\}    
\]
と定める．

$X$ 上のベクトル束 $X,Y$ に対して，
\begin{align*}
    (E \oplus F)_x \coloneqq E_x \oplus F_x\\
    (E \otimes F)_x \coloneqq E_x \otimes F_x
\end{align*}
により，$E$ と $F$ の直和 $E \oplus F$ およびテンソル積 $E \otimes F$ が定まる．

直和とテンソル積は $V(X)$ 上の加法および乗法を定める：

\begin{align*}
    [E] + [F] \coloneqq [E \oplus F]\\
    [E] \cdot [F] \coloneqq [E \otimes F]
\end{align*}

この加法と乗法により，$V(X)$ は単位元を持つ可換半環（特に可換半群）になる．
ただし，階数 $0$ の自明束が加法の単位元であり，階数 $1$ の自明束が乗法の単位元である．

\example{$X$が一点の場合}{

$X = \{ \ast \}$（一点）の場合， 一点上のベクトル束 = ベクトル空間であり，ベクトル空間の同型類は次元で決まる．したがって，

\[
    V(X) \xrightarrow{\simeq} \N \ ;  \quad [V] \mapsto  \dim(V)    
\]

}

一般に可換半群（resp. 可換半環） $S$ に対して，
$S \times S$ 上の同値関係を
\[
    (m,n) \sim (m',n') \underset{\mathrm{def}}\iff \exists p \in S \ \mathrm{s.t.} \ m + n' + p = n + m' + p
\]
で定めると，
\[
    G(S) := S \times S / \sim
\]
は可換群（resp. 可換環）となる．

直感的には，$G(S)$ は　$S$ に形式的な加法逆元を加える操作であると思うことができる．

\example{$\N$の場合}{
\[
    G(N) \xrightarrow{\simeq} \Z \ ; \quad [(m,n)] \mapsto m - n
\]
}

\definition{$K$群}{
コンパクト Hausdorff 空間 $X$ に対して，その$K$群 K(X) を
\[
    K(X) := G(V(X))
\]
で定める．
}


## 参考文献

* \biblabel{atiyah1967k}{[A1]} [A1] {{ref atiyah1967k}}
* \biblabel{mukherjee2013atiyah}{[Muk]} [Muk] {{ref mukherjee2013atiyah}}