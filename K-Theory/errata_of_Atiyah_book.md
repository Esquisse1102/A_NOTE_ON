+++
title = "Errata of Atiyah's Book"
+++

# Atiyah「$K$理論」の誤植

Atiyah の本の和訳 \cite{atiyah2022k} で見つけた誤植（と思われるもの）についてまとめています．



## 1章

- p.3, 12行目:
    - 「任意の同型写像 $\varphi$ は」$\ra$「任意の準同型写像 $\varphi$ は」
        - 原文 \cite{atiyah1967k} を見ると「any homomorphism $\varphi$」とあるので，和訳の際に"準"がタイポしたものと思われる．

- p.13, 4行目:
    - 「$V$ は可縮」$\ra$「$Y$ は可縮」
        - 確かに $V$ は線型空間であることから可縮ではあるのだが，ここで使うべき性質は $Y$ の可縮性である．

## 2章

- p.31, 19行目:
    - 「$H^*_x \subset E_x$」 $\ra$ 「$H^*_a \subset E_x$」
        - 各点 $a \in P(E)_x$ に対応する $E_x$ 部分空間のことを言っているので，ここは $a$ で添字付けするのが正しいと思われる．

- p.33, 1行目:
    - 「ゼロ切断上および無限遠切断上の自明な写像と一致することがわかれば」
        - ここは誤植ではないが，和訳が少し不親切に感じる．
        - 原文は「coincide with the obvious ones over the zero and infinite sections」であり，同型写像 $E \ra (\pi_0^*(E^0),f,\pi_{\infty}^*(E^{\infty}))$ がゼロ切断および無限遠切断上では自明な同型写像と一致するということを言っている．
        - 例えば「ゼロ切断上および無限遠切断上では自明な同型写像と一致することがわかれば」などとした方が原文の意は汲み取りやすいと思う．

- p.34,2行目:
    - 「$\Gamma(\pi^*(E^0),\pi^*(E^{\infty}))$」 $\ra$ 「$\Gamma(\Hom(\pi^*(E^0),\pi^*(E^{\infty})))$」
        - $\Hom$ が抜けている．


- p.34, 17行目:
    - 「$f_{\infty}:H^*|_{P^{\infty}} \ra \pi_0^*(L)$」 $\ra$ 「$f_{\infty}:H^*|_{P^{\infty}} \ra \pi_{\infty}^*(L)$」
        - $P^{\infty}$ 上のベクトル束の同型を考えているので，$\pi_0$ ではなく $\pi_{\infty}$ での引き戻しが正しい．
        - なぜか原論文 \cite{atiyah_bott1964periodicity} でも同じ誤植をしている．

- p.41, 15行目:
    - 「$V^0 = \sum_{k=0}^{\infty}L^k \otimes E^0$」 $\ra$ 「$V^0 = \sum_{k=0}^n L^k \otimes E^0$」
        - 和を取る範囲は $n$ までが正しい．
    
- p.57, 1行目:
    - 「$X_{2n}/X_{2n-1}$ はいくつかの$2n$次元球面を1点で同一視したものなので」
        - こちらも誤植ではないのだが，和訳が少し分かりづらいと感じる．
        - 原文は「$X_{2n}/X_{2n-1}$ is a union of $2n$-spheres with a point in common」であり，$X_{2n}/X_{2n-1}$ がいくつかの$2n$次元球面のウェッジ和 $\bigvee S^{2n}$ となることを言っている．
        - 少し意訳にはなるが「いくつかの$2n$次元球面を共通の一点で貼り合わせたもの」などとした方が意味は掴みやすいのではないかと思う．

- p.58, 2行目:
    - 「$i_n$ は包含写像」
        - 誤植というわけではないが，少し説明不足かつ直前に包含写像 $X = P_1 \ra P_2 \ra \cdots \ra P_n$ について言及していて，非常にミスリーディングであるため補足をする．
        - ここで考えるべき包含写像は上述の自然な包含列から定まるものでは**なく**，ゼロ切断 $X = P_1 \ra P_n$ である．
            - そうでなければ図式が可換にならない．

- p.68, 4行目:
    - 「$\Phi: {\mathcal D}_n (X,Y) \ra {\mathcal L}_n(X,Y)$」
        - 自然な写像が上の準同型を導くこと自体は間違いではないが，後ろの補題2.6.14 の主張などを鑑みるに，正しくは $\Phi: {\mathcal D}_n (X,Y) \ra {\mathcal C}_n(X,Y)$ であると思われる．
            - ただし，この本では ${\mathcal C}_n(X,Y)$ を圏として導入しているので，正確に言えばこの書き方も問題がある．
            - さらに言えば，そもそも ${\mathcal D}_n (X,Y)$ は集合にならない．なのでこの部分を正確に書こうとすると，${\mathcal D}_n (X,Y)$ も圏として導入し $\Phi$ を関手とするか，ホモトピー類の間の写像として $\Phi$ を定義するかのいずれかになると思う．
        - なお，この節の内容の参考にしたであろう \cite{atiyah_bott_shapiro1964} では ${\mathcal L}_n(X,Y)$ ではなく ${\mathcal C}_n(X,Y)$ となっている．
            - ちなみにこの論文では ${\mathcal C}_n(X,Y)$ を集合として導入しているので厳密には間違っている（${\mathcal C}_n(X,Y)$ は集合にならない）が，上述の様に適当に修正すればよいだけなので本質的な問題ではない．

- p.68, 8行目:
    - 「$X \times \{0\} \cup X \times \{1\}$ 上の任意の複体で」
        - ここで考える底空間は $X \times \{0\} \cup X \times \{1\} \cup Y \times I$ が正しい．
        - なお原文では $X \times \{0\} \cup X \times \{1\} \cup Y \times I$ となっているので和訳の際にタイポしたものと思われる．




## 参考文献

* \biblabel{atiyah1967k}{[A1]} [A1] {{ref atiyah1967k}}

* \biblabel{atiyah2022k}{[A2]} [A2] {{ref atiyah2022k}}

* \biblabel{atiyah_bott1964periodicity}{[AB1]} [AB1] {{ref atiyah_bott1964periodicity}}

* \biblabel{atiyah_bott_shapiro1964}{[ABS1]} [ABS1] {{ref atiyah_bott_shapiro1964}}
