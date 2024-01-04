+++
title = "Errata of Atiyah's Book"
+++

# 「$K$理論」の誤植

Atiyah の本の和訳（\cite{A1}）で見つけた誤植（と思われるもの）について．

- p.3, 12行目:
    - 「任意の同型写像 $\varphi$ は」$\ra$「任意の準同型写像 $\varphi$ は」
        - 原文を見ると「any homomorphism $\varphi$」とあるので，和訳の際に"準"がタイポしたものと思われる．

- p.13, 4行目:
    - 「$V$ は可縮」$\ra$「$Y$ が可縮」
        - 確かに $V$ は線型空間であることから可縮ではあるのだが，ここで使うべき性質は $Y$ の可縮性である．

- p.31, 19行目:
    - 「$H^*_x \subset E_x$」 $\ra$ 「$H^*_a \subset E_x$」
        - 各点 $a \in P(E)_x$ に対応する $E_x$ 部分空間のことを言っているので，ここは $a$ で添字付けするのが正しいと思われる．

- p33, 1行目:
    - 「ゼロ切断上および無限遠切断上の自明な写像と一致することがわかれば」
        - ここは誤植ではないが，和訳が少し不親切に感じる．
        - 原文は「coincide with the obvious ones over the zero and infinite sections」であり，同型写像 $E \ra (\pi_0^*(E^0),f,\pi_{\infty}^*(E^{\infty}))$ がゼロ切断および無限遠切断上では自明な同型写像と一致するということを言っている．
        - 例えば「ゼロ切断上および無限遠切断上では自明な同型写像と一致することがわかれば」などとした方が原文の意は汲み取りやすいと思う．

- p.34,2行目:
    - 「$\Gamma(\pi^*(E^0),\pi^*(E^{\infty}))$」 $\ra$ 「$\Gamma(\Hom(\pi^*(E^0),\pi^*(E^{\infty})))$」
        - $\Hom$ が抜けている．

- p34, 17行目:
    - 「$f_{\infty}:H^*|_P^{\infty} \ra \pi_0^*(L)$」 $\ra$ 「$f_{\infty}:H^*|_P^{\infty} \ra \pi_{\infty}^*(L)$」
        - $P^{\infty}$ 上のベクトル束の同型を考えているので，$\pi_0$ ではなく $\pi_{\infty}$ での引き戻しが正しい．
        - なぜか原論文 \cite{AB} でも同じ誤植をしている．

- p41, 15行目:
    - 「$V^0 = \sum_{k=0}^{\infty}L^k \otimes E^0$」 $\ra$ 「$V^0 = \sum_{k=0}^n L^k \otimes E^0$」
        - 和を取る範囲は $n$ までが正しい．
    


共通の1点を持ついくつかの2n球面のユニオン
いくつかの2n球面を共通の一点で貼り合わせたもの

## 参考文献

* \biblabel{A1}{[A1]} [A1] Atiyah（著）, 松尾（監訳）, 川辺（訳）,K理論, 岩波書店, 2022.
* \biblabel{A2}{[A2]} [A2] Atiyah, K-Theory, 1967.
* \biblabel{AB}{[AB]} [AB] Atiyah-Bott, On the periodicity theorem for complex vector bundles, Acta Math. 112(1964), 229-247.
