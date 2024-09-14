+++
title = "Fredholm Operator"

+++
# Fredholm 作用素

@@h2_heading
Contents
@@
\toc

この節では指数定理において中心的な概念となる Fredholm 作用素とその指数について解説を行う．
Fredholm 作用素とは核と余核の次元がそれぞれ有限となるような作用素のことであり，
その次元の差として指数が定義される．
Fredholm 作用素の指数は，ホモトピーやコンパクト作用素の摂動で変わらないというある種の安定性をもっており，
これらの性質から Fredholm 作用素はトポロジーとも深く結びついている．

本節ではまず Fredholm 作用素の定義と具体例について紹介する．
次に Fredholm 作用素を「コンパクト作用素を法として可逆である」という性質で特徴付ける Atkinson の定理を証明し，
最後に指数の加法性・連続性・（コンパクト作用素の摂動に対する）安定性といった，Fredholm 作用素の重要な性質を証明する．


## Fredholm 作用素と Fredholm 指数

$H$ を可分 Hilbert 空間とする（なお，以下の議論の多くの部分は非可分な Hilbert 空間や，異なる Hilbert 空間 $H_1, H_2$ 上の作用素についても成り立つ）．

\definition{Fredholm 作用素}{
可分 Hilbert 空間 $H$ 上の有界線型作用素 $T \in \B(H)$ が **Fredholm 作用素** であるとは，
$$\dim(\Ker T) < \infty \quad かつ \quad \dim(\Coker T) < \infty$$
を満たすことをいう．

$H$ 上の Fredholm 作用素全体を $\Fred(H)$ とかく．
}

\remark{Fredholm 作用素の値域について}{
文献によっては Fredholm 作用素の定義に
- 値域が閉部分空間
を仮定するときがある．
しかし実はこの仮定は以下のように上記の条件から導くことができる：

$T \in \B(H)$ をとり，$\dim(\Coker T) < \infty$ と仮定する．
このとき $T | (\Ker T)^\perp \colon (\Ker T)^\perp \to H$ は単射な線形写像である．
仮定より $\dim(\Coker T) < \infty$であるので，$\Im T$ の代数的補空間 $V$ は有限次元．
したがって $V$ は $H$ の閉部分空間となり，Hilbert空間としての直和 $(\Ker T)^\perp \oplus V$ を考えることができる．
そこで $S:(\Ker T)^\perp \oplus V \to H$ を $S(x,x'):=Tx + x'$ として定めると，$S$ は全単射な有界線形作用素となるので，
開写像定理より $S$ は同型写像である．
したがって $(\Ker T)^\perp$ が閉部分空間であることから，$\Im T = S(\Ker T)^\perp$ も閉部分空間となる．

}

一般に有界作用素の値域は閉とは限らない：

\example{値域が閉にならない有界作用素}{
$H$ を Hilbert 空間とし，$\{e_n\}_{n=1}^\infty$ を $H$ の正規直交基底とする．
$H$ 上の作用素 $A$ を
$$
    Ax \coloneqq \sum_{n=1}^\infty \frac{1}{n}e_n\ip{e_n,x}, \quad x \in H
$$
で定める（$A$ を **contraction operator** という）．
このとき $A$ は $H$ 上の有界作用素であるが，$\Im A$ は閉部分空間にはならない．

}

Fredholm 作用素にはその指数と呼ばれる重要な不変量を定めることができる．

\definition{Fredholm 指数}{
$F \in \Fred(H)$ に対して
\[
    \Index(T) \coloneqq \dim (\Ker T) - \dim (\Coker T)
\]
を $T$ の **Fredholm 指数**（**Fredholm index**）あるいは単に **指数**（**index**）という．
}

\example{有限次元 Hilbert 空間上の Fredholm 作用素}{
有限次元 Hilbert 空間 $H_1$ から $H_2$ への任意の線形作用素 $T \in \B(H)$ は Fredholm 作用素である\\
（異なる Hilbert 空間の間の Fredholm 作用素の概念も $H$ 上の Fredholm 作用素と同様に定義される）．\\
また次元定理から $\dim(\Ker T) + \dim (\Im T) = \dim (H_1)$ であり，
余核の定義から $\dim (\Im T) + \dim (\Coker T) = \dim (H_2)$ である．
よって $T$ の指数は
\begin{align*}
    \Index(T)   &= \dim(\Ker T) - \dim (\Coker T)\\
                &= \dim(\Ker T) + \dim (\Im T) - \dim (\Im T) - \dim (\Coker T)\\
                &= \dim (H_1) - \dim (H_2)
\end{align*}
となる．
}

次の例は基本的であるが重要である．

\example{シフト作用素}{
$H = \ell^2(\N)$ とする．このとき $k \leq 0$ に対する**右シフト作用素**（**right shift operator**）$S_k \in \B(H)$ を
\[
    S_k \colon (a_0,a_1,a_2,\dots) \mapsto (\underbrace{0,\dots,0}_{k},a_0,a_1,a_2,\dots)
\]
で定める．
$S_k$ は数列を右に $k$ だけ“ズラす”作用素である（ただし $S_0 = I$ （恒等作用素）である）．

定義から $S_k$ と $S_{k'}$ の合成は $S_{k + k'}$ になることが確かめられる．
特に任意の $k > 0$ に対して $S_k$ は $S_1 \colon (e_1,e_2,e_3,\dots) \mapsto (0,e_1,e_2,\dots)$ を $k$ 回合成したものと一致する
（i.e, $S_k = (S_1)^k$）．
定義より $\dim (\Ker T) = 0$，$\dim (\Coker T) = k$ であるので，$S_k$ は指数 $-k$ の Fredholm 作用素である．

同様に $k>0$ に対して**左シフト作用素**（**left shift operator**）$S_{-k}$ を
\[
    S_{-k} \colon (a_0,a_1,a_2,\dots) \mapsto (a_k,a_{k+1},a_{k+2},\dots) 
\]
で定めると，$S_{-k}$ は指数 $k$ の Fredholm 作用素となる．
}

Fredholm 作用素という性質は，有限次元ベクトル空間上の同型写像とテンソル積をとっても変わらない：

\example{有限次元ベクトル空間上の同型写像とのテンソル積}{
$T \in \Fred(H)$ とし，$S\colon \C^N \to \C^N$ を同型写像とするとき，
\begin{align*}
    \Ker(T \otimes S) &= \Ker T \otimes \C^N\\
    \Im (T \otimes S) &= \Im T \otimes \C^N\\
    \Coker (T \otimes S) &\simeq \Coker T \otimes \C^N
\end{align*}
が成り立つ．
なお，最後の同型は次の可換図式に5項補題を用いることによって得られる：

$$
  \begin{CD}
     0 @>>> \Im T \otimes \C^N @>>>  H \otimes \C^N @>>> (H \otimes \C^N)/(\Im T \otimes \C^N) @>>> 0 \\
        @.       @V{ \rm{id} }VV    @V{\rm{id} }VV @VVV @. \\
     0 @>>> \Im T \otimes \C^N @>>>  H \otimes \C^N @>>> \Coker T \otimes \C^N @>>> 0
  \end{CD}
$$

したがって $T\otimes S$ は Fredholm 作用素であり，その指数は $\Index (T \otimes S) = \Index(T)\cdot N$ である．

}


Fredholm作用素は共役作用素を用いて特徴付けることもできる：

\lemma{共役作用素を用いた Fredholm 作用素の同値条件}{
Hilbert 空間 $H$ と $T \in \B(H)$ に対して以下は同値：
1. $T \in \Fred(H)$
2. $\dim(\Ker T)$, $\dim(\Ker T^*) < \infty$ かつ，$\Im T$ は閉部分空間

さらに $T$ がFredholm 作用素作用素であるとき，次が成り立つ：

\[
    \Index(T) = \dim(\Ker T) - \dim(\Ker T^*)
\]

}

\proof{
共役作用素の性質から $\Ker T^* = (\Im T)^\perp$ である．
よって $\Im T$ が閉部分空間であるとき，$(\Im T)^\perp \simeq \Coker T$ が成り立つことから，
$\Ker T^* \simeq \Coker T$ となる．
主張の内容はこれより従う．

}

特に自己共役な Fredholm 作用素の指数は $0$ である． 


## コンパクト作用素と Atkinson の定理

Hilbert 空間 $H$ 上の有界作用素 $T$ の値域が有限次元のとき，$T$ を**有限階作用素**という．有限階作用素の全体を $\F(H)$ とかく．

実は Fredholm 作用素は有限階作用素（コンパクト作用素）を法として可逆な作用素であるということもできる．
以下，このことを主張する Atkinson の定理の証明を行う．

\definition{コンパクト作用素}{
$T \in \B(H)$ が**コンパクト作用素**であるとは，$T$ が有限階作用素でノルム近似できる（i.e. 有限階作用素の列 $\{T_n\} \subset \F(H)$ が存在して $\norm{T - T_n} \to 0$ となる）ことをいう．

$H$ 上のコンパクト作用素全体を $\K(H)$ とかく．

}

\remark{コンパクト作用素の同値条件}{
コンパクト作用素についてはいくつか同値条件が知られている．
よく使われる条件との同値性については[コンパクト作用素に関する補足](#コンパクト作用素に関する補足)を参照されたい．
}

コンパクト作用素の定義から $\K(H) = \overline{\F(H)}$（ノルム閉包）である．
有限階作用素の全体 $\F(H)$ は $\B(H)$ の自己共役なイデアルであり，
和・積および $\ast$ 演算（共役作用素をとる操作のこと）はノルム連続であるので，
$\K(H)$ は $\B(H)$ の自己共役な閉イデアルである．

したがってBanach環 $\B(H)$ を閉イデアルで $\K(H)$ で割った商 Banach 環を考えることができる．

\definition{Calkin環}{
商 Banach 環
\[\calQ(H)  \coloneqq \B(H) / \K(H)\]
を **Calkin環** という．
}

$\pi \colon \B(H) \ra \Q(H)$ を自然な商写像とし，$\Q(H)^{\times}$ で $\Q(H)$ の可逆元全体を表す．

\theorem{Atkinson, 1951}{
Hilbert空間 $H$ 上の有界線形作用素 $\B(H)$ に対して，
\[
    T \in \Fred(H) \iff \pi(T) \in \Q(H)^{\times}
\]

より詳しく，Hilbert空間 $H$ の有界線形作用素 $T \in \B(H)$ に対して以下は同値となる：
1. $T \in \Fred(H)$
2. $I - ST \in \K(H)$，$I - TS' \in \K(H)$ となる $S,S' \in \B(H)$ が存在する
3. $I - ST \in \F(H)$，$I - TS \in \F(H)$ となる $S \in \B(H)$ が存在する
    
}

この定理に現れる作用素 $S,S'$ を $T$ の **pseudo-inverse** や **パラメトリクス**（**parametrix**）ということもある．

\remark{pseudo-inverse に関するいくつかの注意}{
(2)$\iff$(3) より，(2) の $S$ と $S'$ は $S=S'$ となるようにとることができる．

また，$S,S' \in \B(H)$ がともに $T$ のpseudo-inverseであるとすると，
ある有限階作用素 $F \in \F(H)$ が存在して $S' = S + F$ となる．
実際，$I - ST = F_1$, $I - TS' = F_2$ となる $F_1,F_2 \in \F(H)$ が存在するので，
$S' - STS' = F_1S'$ より，$S' - S(I - F_2) = F_1S'$ となり，これを整理して
$S' = S + F_1S' - SF_2$ が成り立つ．
}

\proof{

後半の主張のみ示せば十分である．

(1)$\implies$(3)：\\
$T$ を Fredholm 作用素とする．
$\Ker T$ は閉部分空間であるので $H = \Ker T \oplus (\Ker T)^\perp$ である．
一方，$T$ が Fredholm であることから $\Im T$ が閉部分空間となるので，$H = \Im T \oplus (\Im T)^\perp$ が成り立つ．
このとき $T|_{(\Ker T)^\perp} \colon (\Ker T)^\perp \ra \Im T$ は開写像定理より同型写像となるので，
その逆写像を $T' \coloneqq (T|_{(\Ker T)^\perp})^{-1} \in \B(\Im T, (\Ker T)^\perp)$ とする．
$H$ から $\Im T$ への射影を $P$ として，合成
\[
    H \xrightarrow{P} \Im T \xrightarrow{T'} (\Ker T)^\perp \hookrightarrow H
\]
を $S$ とすると，$S \in \B(H)$ である．
このとき，作り方から $ST$ は $H$ から $(\Ker T)^\perp$ への射影，$TS$ は $H$ から $\Im T$への射影である．
したがって $I - ST$ は $\Ker T$ への射影であり，$I - TS$ は $(\Im T)^\perp$ への射影となるが，
$\Ker T$ および $(\Im T)^\perp \simeq \Coker T$ はいずれも有限次元であるので，これらは有限階作用素である．

(3)$\implies$(2)：\\
有限階作用素はコンパクト作用素であるので自明．

(2)$\implies$(1)：\\
$K_1 \coloneqq -(I - ST)$ および $K_2 \coloneqq -(I - TS')$ がコンパクト作用素となるような
$S,S' \in \B(H)$ をとる．
このとき，有限階作用素 $F_1 \in \F(H_1)$，$F_2 \in \F(H_2)$ を
$\norm{F_1 - K_1} < 1$，$\norm{F_2 - K_2} < 1$ を満たすようにとることができる．
Banach 環の可逆元に関する性質（cf. \cite{douglas1998banach}, Proposition 2.5）より $I - F_1 + K_1 = I - (F_1 - K_1)$ は可逆であるので，
\begin{align*}
    (I - F_1 + K_1)^{-1}ST &= (I - F_1 + K_1)^{-1}(I + K_1)\\
                            &= (I - F_1 + K_1)^{-1}(I + K_1 - F_1 + F_1)\\
                            &= I + (I - F_1 + K_1)^{-1}F_1
\end{align*}
が成り立つ．
ここで $(I - F_1 + K_1)^{-1}F_1$ が有限階作用素であることに注意すると，
$T$ は有限階作用素を法として左可逆であることがわかり，したがって $\dim(\Ker T) < \infty$ となる．

同様の議論を $K_2,F_2$ に対しても行うと，$T$ が有限階作用素を法として右可逆であることもわかり，
したがって $\dim(\Coker T) < \infty$ が成り立つ．

}

Atkinson の定理から $\Fred(H) = \pi^{-1}(\calQ(H)^\times)$ である．
ここで，$\calQ(H)^\times \subset \calQ(H)$ は開集合であり，$\pi \colon \B(H) \to \calQ(H)$ は連続写像であるので，
以下の系が成り立つ：

\corollary{Fredholm作用素の全体は開集合}{
$\Fred(H) \subset \B(H)$ は開集合である．
}


Atkinson の定理の証明から次の **Fedosov の公式** を証明することができる．
なおトレースに関する事項については[トレースに関する補足](#トレースに関する補足)を参照のこと．

\proposition{Fedosovの公式}{
$T \in \Fred(H)$ とし，$S \in \B(H)$ をその pseudo-inverse とするとき，
\[
    \Index(T) = \Tr(TS - ST)
\]
が成り立つ．
}

\proof{
ある pseudo-inverse $S$ が等式を満たすとすると，
任意の pseudo-invese に対して等式が成り立つ．
実際，$S'$ を別の pseudo-inverse とすると，$S' = S + F$ となる $F \in \F(H)$ が存在し，
\begin{align*}
    \Tr(TS'-S'T) &= \Tr(TS - ST + TF - FT)\\
                &= \Tr(TS - ST) + \Tr(TF) - \Tr(FT)\\
                &= \Tr(TS-ST)
\end{align*}
が成り立つ．

そこで，pseudo-inverse として，
$I-ST$ が $\Ker T$ への射影かつ $I -TS$ が $(\Im T)^\perp$ への射影となるものをとる
（Atkinson の定理の証明より，このような pseudo-inverse は存在する）．
このとき，$\Tr(I -ST) = \dim (\Ker T)$, $\Tr(I - TS) = \dim((\Im T)^\perp) = \dim(\Coker T)$ より，
\begin{align*}
    \Index(T) &= \dim(\Ker T) - \dim(\Coker T)\\
                &= \Tr(I -ST) - \Tr(I - TS)\\
                &= \Tr(TS -ST)
\end{align*}
が成り立つ．

}


\corollary{有限階作用素の摂動に対する指数の安定性}{
$T \in \Fred(H)$, $F \in \F(H)$ に対して，
\[
    \Index(T) = \Index(T + F)
\]
}

\proof{
$S$ を $T$ に対する pseudo-inverse とすると，$S$ は $T+F$ に対する pseudo-inverse にもなっている．
よって，Fedosovの公式から
\begin{align*}
    \Index(T + F) &= \Tr((T+F)S - S(T+F)) = \Tr(TS - ST) + \Tr(FS) - \Tr(SF) \\
                &= \Tr(TS - ST) = \Index(T) 
\end{align*}
が成り立つ．

}

\corollary{pseudo-inverse の指数}{
$T \in \Fred(H)$ に対して，$S$ を $T$ の pseudo-inverse とすると，
$S$ も Fredholm 作用素であり
\[
    \Index(S) = - \Index(T)
\]
が成り立つ．
}

\proof{
    前半は Atkinson の定理から明らか（$T$ が $S$ の pseudo-inverse になる）．
    後半については Fedosov の公式から
    \[
        \Index(S) = \Tr(ST - TS) = - \Tr(TS - ST) = - \Index(T)
    \]
    となり，主張が成り立つ．

}

以下に述べる指数の加法性・連続性・（コンパクト作用素の摂動に対する）安定性はいずれも重要である．

\proposition{指数の加法性}{
$T_1,T_2 \in \Fred(H)$に対して，$T_1T_2 \in \Fred(H)$ であり，
\[
    \Index(T_1T_2) = \Index(T_1) + \Index(T_2)
\]
が成り立つ．
}

\proof{
$S_1,S_2$ をそれぞれ $T_1,T_2$ の pseudo-inverse とすると，
$S_2S_1$ が $T_1T_2$ の pseudo-inverse となるので $T_1T_2$ は Fredholm 作用素である．
    
また $I - S_1T_1 = F_1$, $I - T_2S_2 = F_2$, $F_1,F_2 \in \F(H)$ とするとき，
\begin{align*}
    \Index(T_1T_2) &= \Tr(T_1T_2S_2S_1 - S_2S_1T_1T_2)\\
                    &= \Tr(T_1(I - F_2)S_1 - S_1T_1 + S_1T_1 - S_2S_1T_1T_2)\\
                    &= \Tr(T_1S_1 - S_1T_1) - \Tr(T_1F_2S_1) + \Tr(S_1T_1 - S_2S_1T_1T_2)\\
                    &= \Index(T_1) - \Tr(S_1T_1F_2) + \Tr(S_1T_1 - S_2S_1T_1T_2)\\
                    &= \Index(T_1) + \Tr(S_1T_1(I - F_2) - S_2S_1T_1T_2)\\
                    &= \Index(T_1) + \Tr(S_1T_1T_2S_2 - S_2S_1T_1T_2)\\
                    &= \Index(T_1) - \Index(S_2)
\end{align*}
となる．
ここで，最後の行の変形は $S_2$ が $S_1T_1T_2$ の pseudo-inverse になることを用いた．
したがって $\Index(S_2) = - \Index(T_2)$ より
\[
    \Index(T_1T_2) = \Index(T_1) + \Index(T_2)
\]
が成り立つ．

}

\remark{指数の加法性の証明について}{
指数の加法性は，蛇の補題を用いて得られる完全系列
\[
    0 \longrightarrow \Ker T \longrightarrow \Ker R \longrightarrow    \Ker S \longrightarrow   \Coker T \longrightarrow    \Coker R \longrightarrow    \Coker S \longrightarrow  0
\]
を用いて示すこともできる．

なお，上記の Fedosov の公式を用いた方法は\cite{murphy1994fredholm}を参考にした．

}


\proposition{指数の連続性}{
    Hilbert空間 $H$ に対して，
    \[
        \Index \colon \Fred(H) \longrightarrow \Z
    \]
    は連続（したがって局所定数）である．

    特に $T,T' \in \Fred(H)$ が同じ（弧状）連結成分上の点であるならば $\Index(T) = \Index(T')$ が成り立つ．
}

後半の主張から $T$ と $T'$ を結ぶパス（i.e. $f(0) = T$, $f(1) = T'$ となる連続写像 $f \colon [0,1] \to \Fred(H)$）
が存在するならば $\Index(T) = \Index(T')$ である．

\proof{
$T_0 \in \Fred(H)$ とし，$S_0$ を $T_0$ の pseudo-inverse とする．
このとき，$\norm{T - T_0} < \norm{S_0}^{-1}$ を満たす $T \in \Fred(H)$ に対して，
$\norm{(T_0S_0 - TS_0)} < 1$ となる．
よって $U \coloneqq I - (T_0S_0 - TS_0)$ は可逆であり，$\Index(U) = 0$ である．
ここで $I - T_0S_0 \eqqcolon F_0 \in \F(H)$ とすると，
有限階作用素の摂動に対する指数の安定性と指数の加法性から，
\[
    0 = \Index(U) = \Index(F_0 + TS_0) = \Index(TS_0) = \Index(T) + \Index(S_0)
\]
したがって，
\[
    \Index(T) = - \Index(S_0) = \Index(T_0)
\]
が成り立ち，指数が連続であることが示された．

}


\proposition{コンパクト作用素の摂動に対する指数の安定性}{
$T \in \Fred(H)$ と $K \in \K(H)$ に対して，
$T+K \in \Fred(H)$ であり，
\[
    \Index(T + K) = \Index(T)
\]
が成り立つ．
}

\proof{
前半は Atkinson の定理から明らか．
また後半の主張については，$T + tK, \quad t \in [0,1]$ が $T$ と $T+K$ を結ぶ $\Fred(H)$ 内のパスとなるので，
指数の連続性から $\Index(T + K) = \Index(T)$ となる．

}

Fredholm作用素の安定性を用いることで，次の **Fredholm の択一定理**（**Fredholm alternative**）と呼ばれる命題が得られる
（この定理は以降の議論では用いないが，Fredholm作用素やその指数がもつ意味を理解する上で有用であると思われるので，ここで紹介する）．

\proposition{Fredholmの択一定理}{
$H$ を Hilbert 空間とし，$K \in \K(H)$, $\lambda \C \in \setminus \{0\}$ とする．
このとき，$\lambda I + K$ が単射であることと全射であることは同値である．
特に，以下のいずれか一方のみが成り立つ：
1. 方程式$(\lambda I + K)f = 0$は非自明な解をもつ
2. 方程式$(\lambda I + K)f = 0$は任意の$g \in H$に対して（一意的な）解をもつ

}

\proof{
任意の $\lambda \in \C \setminus \{0\}$ に対して，$\lambda I$ は可逆であり，したがって指数 $0$ のFredholm作用素である，
よって Fredholm 作用素の安定性から，任意の $K \in \K(H)$ に対して $\lambda I + K$ も指数 $0$ の Fredholm 作用素である．
これより $\lambda I + K$ の値域が閉部分空間であることと，核の次元と余核の次元が等しいことがわかり，前半の主張が成り立つ．

後半の主張については，
\begin{align*}
    &(\lambda I + K)f = 0 \ が非自明な解をもつ  \iff \Ker (\lambda I + K) \neq \{0\} \iff \lambda I + K \ は単射でない\\
    &(\lambda I + K)f = g \ は任意の \ g \in H \ に対して解をもつ \iff \Im (\lambda I + K) = H \iff \lambda I + K \ は全射
\end{align*}
より従う．

}

Fredholm の択一定理は Fredholm の交代定理とも呼ばれる．
これは有限次元ベクトル空間上の線型写像の性質「全射 $\iff$ 単射」の一般化であるとも考えられる．
なお，上記の証明では Fredholm 作用素の安定性から Fredholm の択一定理を導いたが，
コンパクト作用素のスペクトルに関する Riesz-Schauder の定理からも択一定理を導くこともできる．
そのため，Fredholm の択一定理を Riesz-Schauder の択一定理と呼ぶ文献も存在する（cf. e.g. \cite{ito_komatsu1977analysis}）．

\example{第二種 Fredholm 積分方程式}{
$H = L^2([0,1])$ とするとき，
連続関数 $k \in C([0,1] \times [0,1])$ に対して，作用素 $K \in \B(H)$ を
\[
    Kf(s) \coloneqq \int_0^1 k(s,t)f(t)dt, \quad f \in H, s \in [0,1]
\]
で定めると，$K$ はコンパクト作用素である．
$g \in L^2([0,1])$ と $\lambda \in \C \setminus \{0\}$ に対して定まる積分方程式（第二種 Fredholm 積分方程式と呼ばれる）
\[
    \int_0^1 k(s,t)f(t)dt - \lambda f(s) = g(s)
\]
を考えると，この方程式は上の作用素 $K$ を用いて
\[
    (K - \lambda I)f = g
\]
とかける．

もし $\lambda$ が $K$ のスペクトルでないとすると，上の方程式は一意的な解 $f = (K - \lambda)^{-1}g$ を持つ．
したがって，このとき同次方程式
\[
    \int_0^1 k(s,t)f(t)dt - \lambda f(s) = 0
\]
は非自明な解を持たないことが Fredholm の択一定理からわかる．

一方，$\lambda$ が $K$ のスペクトルである場合には，$(K - \lambda I)f = g$
が解を持たない $g \in  L^2([0,1])$ が存在するので
（Fredholm の択一定理から全射と単射は同値で，そのとき開写像定理から逆作用素が存在する），
Fredholm の択一定理より
\[
    \int_0^1 k(s,t)f(t)dt - \lambda f(s) = 0
\]
は非自明な解を持つ．
    
}

## Appendix

### コンパクト作用素に関する補足

上記ではコンパクト作用素を有限階作用素のノルム極限として定義したが，
コンパクト作用素にはいくつか同値条件があり，上記のもの以外が定義として採用される場合も多い．
そこで以下によく用いられる同値条件とその証明についてまとめておく．

\proposition{コンパクト作用素の同値条件}{
Hilbert空間 $H$ 上の有界線形作用素 $T \in \B(H)$ に対して，以下は同値：
- $H$ の任意の有界集合の像が $H$ において相対コンパクト（i.e. $B \subset H$：有界 $\implies$ $\overline{TB} \subset H$：コンパクト）
- $H$ の任意の有界列 $\{x_n\}$ に対して，ある部分列 $\{x_{n_k}\}$ が存在し，$\{Tx_{n_k}\}$ はノルム収束する
- $H$ の任意の弱収束列 $\{x_n\}$ に対して，$\{Tx_n\}$ はノルム収束（i.e. $x_n \xrightarrow{w} x \implies \|Tx - Tx_n\| \ra 0$）
- $T$ は有限階作用素でノルム近似できる（i.e. $\exists \{T_n\} \subset \F(H)$ s.t. $\|T - T_n\| \ra 0$）

}


\remark{条件 (1) についての補足}{
Hilbert 空間上の任意の有界集合は十分大きい半径の閉球に含まれ，また任意の閉球は閉単位球のスカラー倍として表される．
よって以下の二つの条件は同値である：
- $H$ の任意の有界集合の像が $H$ において相対コンパクト
- $H$ の閉単位球の像が $H$ において相対コンパクト

したがって (1) における「任意の有界集合」を「閉単位球」に置き換えても同値である．
また同様の議論により，閉単位球を開単位球としてもよい．

なお閉単位球を考える場合には，Hilbert 空間上の閉単位球が弱位相でコンパクトであることと，
有界線形作用素が弱位相に関して連続になることから，その像も弱位相でコンパクト（したがって弱位相で閉集合）になる．
したがって「弱位相で閉集合 $\implies$ ノルム位相で閉集合」より，閉単位球の像はノルム位相で閉集合となる．
これより閉単位球を考える場合には，像の条件の「相対コンパクト」を「コンパクト」に置き換えても同値であることがわかる．
}

\proof{

(1)$\implies$(2)：\\
$H$ の任意の有界集合の $T$ による像が $H$ において相対コンパクトであるとし，$\{x_n\}$ を $H$ の有界列とする．
$B \subset H$ を $\{x_n\}$ を含む有界集合とすれば，$\overline{TB}$ はコンパクト集合．
従って $\{Tx_n\}$ の部分列 $\{Tx_{n_k}\}$ であって $H$ でノルム収束するものが存在し，$\{x_{n_k}\}$ が求める $\{x_n\}$ の部分列である．

(2)$\implies$(1)：\\
$B \subset H$ を有界集合とし，$\overline{TB}$ の点列 $\{y_n\}$ を考える．
$\{y_n\}$ が収束部分列をもつことを示せばよい．
$y_n \in \overline{TB}$ より，各 $n$ に対して $\|y_n -z_n\| < \frac{1}{n}$ を満たす $z_n \in TB$ が存在する．
このとき仮定から列 $\{z_n\} \subset TB$ は $\overline{TB}$ の点 $z$ に収束する部分列 $\{z_{n_k}\}$ をもつ
（$z_n = Tx_n$ となる $x_n$ からなる列 $\{x_n\} \subset B$ を考えればよい）．
このとき
\[
    \|y_{n_k} - z\| \leq \|y_{n_k} - z_{n_k}\| + \|z_{n_k} - z\| < \frac{1}{n_k} + \|z_{n_k} - z\| \rightarrow 0 \quad (n \to \infty)
\]
であるので，$\{y_n\}$ の部分列 $\{y_{n_k}\}$ は収束部分列となる．

(1)$\implies$(3)：\\
$\{x_n\}$ を $H$ の弱収束列とし，その収束先を $x$ とする．
有界線形作用素は弱位相で連続であるので $\{Tx_n\}$ は $Tx$ に弱収束する．
いま $\{Tx_n\}$ が $Tx$ にノルム収束していないと仮定すると，
ある $\varepsilon > 0$ と部分列 $\{x_{n_k}\}$ であって，
任意の $k$ に対して $\|Tx_{n_k} - Tx\| \geq 0$ となるものがとれる．
一方，$\{x_n\}$ は弱収束列であるので，それを含む有界集合$B$が存在し，
$T$ がコンパクトであることから $\overline{TB}$ はコンパクトである．
したがって $\{Tx_{n_k}\}$ はノルム収束部分列をもつが，$\{Tx_n\}$ が $Tx$ に弱収束することから，
その収束先は $Tx$ である（「ノルム収束 $\implies$ 弱収束」に注意）．
しかしこれは任意の $k$ に対して $\|Tx_{n_k} - Tx\| \geq 0$ となることに矛盾．
したがって $\{Tx_n\}$ が $Tx$ にノルム収束する．

(3)$\implies$(2)：\\
有界列 $\{x_n\} \subset H$ を任意にとる．
このとき適当に正の定数をかけることで $\{x_n\}$ は $H$ の閉単位球に含まれると仮定してよい．
Hilbert 空間の閉単位球は弱位相でコンパクトであるので，弱収束部分列 $\{x_{n_k}\}$ が存在するが，
(3) より $Tx_{n_k}$ はノルム収束する．

(1)$\iff$(4)：\\
この同値条件は
\[
    \overline{\F(H)}=\K(H)
\]
であることと同値である．よって以下ではこれを示す．

有限階作用素の全体 $\F(H)$ はコンパクト作用素の全体 $\K(H)$ に含まれるので，
$\K(H)$ が $\B(H)$ においてノルム位相で閉集合であることをいえば，
$\overline{\F(H)} \subset \K(H)$ がいえる．
そこで $T \in \overline{\K(H)}$ を任意にとり，$T \in \K(H)$ であることを示す．

$\{x_n\}$ を $H$ の弱収束列とし，その弱収束先を $x$ とする（i.e. $x_n \xrightarrow{w} x$）．
$M \coloneqq \sup_{n}\{\norm{x},\norm{x_n}\}$ とおき，$\varepsilon > 0$ を任意にとる．
$T \in \overline{\K(H)}$ より，$\norm{T - S} < \frac{\varepsilon}{3M}$ を満たす $S \in \K(H)$ がとれる．
このとき (1)$\implies$(3) より，ある $k$ が存在して $\norm{Sx_n - Sx} < \frac{\varepsilon}{3} \quad (n \geq k)$ となる．
したがって
\begin{align*}
    \norm{Tx_n - Tx} &\leq  \norm{Tx_n - Sx_n} + \norm{Sx_n - Sx} + \norm{Sx - Tx} \\
                     &\leq  \norm{T-S}\norm{x_n} + \norm{Sx_n - Sx} + \norm{S-T}\norm{x} \\
                     &<  \frac{\varepsilon}{3} + \frac{\varepsilon}{3} + \frac{\varepsilon}{3} = \varepsilon \quad \forall n \geq k
\end{align*}
が成り立ち，$\{Tx_n\}$ は $T$ にノルム収束する．よって (3)$\implies$(1) より $T$ はコンパクトである．

次に逆の包含を示す．(1) を満たす任意の作用素が有限階作用素のノルム極限となることをいえばよい．
$T \in \K(H)$ を任意にとり，$B \in H$ を閉単位球とする．
$\overline{TB}$ はコンパクト (実際には $TB = \overline{TB}$)であるので，
任意の $n$ に対して，有限個の $y_1, \dots, y_m \in H$ が存在し，
$B(y_i,\frac{1}{2n}) \coloneqq \{y \in H \mid \norm{y - y_i} <\frac{1}{2n} \}$
が $\overline{TH}$ を覆うようにできる（$m$ は $n$ に依存する）．
$y_1, \dots, y_m$ が張る部分空間を $V_n$ として，$V_n$ への射影を $P_n$ とすると，$S_n \coloneqq P_nT$ は有限階作用素である．
このとき，任意の $x \in B$ に対して $\norm{Tx -y_i} < \frac{1}{2n}$ となる $y_i$ が存在し，
$P_n$ が $V_n$ への射影作用素であることから $P_n(y_i)=y_i$ である．
ここで（非自明な）射影作用素のノルムが $1$ であることに注意すると，
$\norm{S_nx - y_i} = \norm{P_nTx - P_ny_i} \leq \norm{P_n}\norm{Tx - y_i} < \frac{1}{2n}$ が成り立つ．
したがって
\begin{align*}
    \norm{T-S_n} = \sup_{x \in B} \norm{(T - S_n)x} &= \sup_{x \in B} \norm{Tx - S_nx} \\
                                                &\leq \sup_{x \in B} \{ \norm{Tx-y_i} + \norm{y_i - S_nx} \}\\
                                                &< \sup_{x \in B} \{ \frac{1}{2n} + \frac{1}{2n} \} = \frac{1}{n}
\end{align*}
となり，有限階作用素の列 $\{S_n\}$ は $T$ にノルム収束する．

}

###  トレースに関する補足

この補足では，有界作用素のトレースに関する基本的な内容についてまとめる（cf. \cite{hiai_yanagi1995hilbert}, 4.2節）．
Hilbert 空間 $H$ 上の有界作用素 $T \in \B(H)$ に対して，$T \geq 0$ のとき，
\[
    \Tr(T) \coloneqq \sum_n\ip{e_n,Te_n} \quad \in [0,\infty]
\]
が正規直交基底 $\{e_n\}$ の取り方に依らずに定まる．
$|T| \coloneqq (T^*T)^{1/2}$ を $T$ の絶対値とするとき，$1 \leq p < \infty$ に対して
\[
    \calL^p(H) \coloneqq \{T \in \B(H) \mid \Tr|T|^p < \infty\}
\]
を **Schattenn $p$-クラス** といい，特に $\calL^1(H)$ を **トレースクラス** という．
$1 \leq p < \infty$ に対して，$\calL^p(H)$ は $\B(H)$ の（ノルム閉でない）両側イデアルであり，
\[
    \F(H) \subset \calL^p(H) \subset \K(H)
\]
を満たす．
トレースクラス作用素 $T \in \calL^1(H)$ に対しては，
$\sum_n\ip{e_n,Te_n}$ が絶対収束し，その値は正規直交基底 $\{e_n\}$ の取り方に依らない．
そこで
\[
    \Tr (T) \coloneqq \sum_n\ip{e_n,Te_n}
\]
と定め，これを $T$ の**トレース**という．
定義から，$T,S \in \calL^1(H)$ に対して
\[
    \Tr(T+S) = \Tr(T) + \Tr(S)
\]
であり，$P \in \F(H)$ が部分空間 $H'$ への射影であるときには
\[
    \Tr(T) = \dim (H')
\]
である．
また $T \in \calL^1(H)$ に対して
\[
    \Tr(TS) = \Tr(ST), \quad \forall S \in \B(H)
\]
が成り立つ．


## 参考文献
* \biblabel{douglas1998banach}{[D]} [D] {{ref douglas1998banach}}
* \biblabel{hiai_yanagi1995hilbert}{[HY]} [HY] {{ref hiai_yanagi1995hilbert}}
* \biblabel{higson2000analytic}{[HR]} [HR] {{ref higson2000analytic}}
* \biblabel{ito_komatsu1977analysis}{[IK]} [IK] {{ref ito_komatsu1977analysis}}
* \biblabel{宮島静雄2014関数解析}{[Miy]} [Miy] {{ref 宮島静雄2014関数解析}}
* \biblabel{mukherjee2013atiyah}{[Muk]} [Muk] {{ref mukherjee2013atiyah}}
* \biblabel{murphy1994fredholm}{[Mur]} [Mur] {{ref murphy1994fredholm}}



---

@@h2_heading
Support
@@

本サイトの記事や解説を気に入ってくださった方，「投げ銭してもいいよ」という方がいらっしゃれば，以下よりご支援いただけると嬉しいです．
- [OFUSE](https://ofuse.me/esquisse1102)
  - OFUSE は投げ銭付きファンレターサービスです．
  - 「ファンレターを送る」で投げ銭（100円〜）付きのファンレターを送ることができます．
    - デフォルトの金額は OFUSE の仕様なので気にしないでください．
  - 応援・質問・コメントなど，何でも大歓迎です！

応援よろしくお願いします！