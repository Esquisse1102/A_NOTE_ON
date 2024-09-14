+++
title = "What is NCG?"
+++

# 非可換幾何学とは

@@center
**非可換幾何学とは何か**
@@
正直この問いに答えることは筆者の手に余る．
それは「数学とは何か」や「幾何学とは何か」という問いへの回答が容易ではないことと似ている．
大き過ぎる対象について何かを述べるには，それ相応の見識や力量が必要なのだ．
あいにく筆者にはどちらも足りていない．

そこで本記事では上記の問いへの代替として

- 非可換幾何学という分野が成立するきっかけとなった定理

や

- 非可換幾何学で現れるいくつかの概念や非可換幾何学の応用

について解説したい．

本記事を通じて読者に非可換幾何の雰囲気が少しでも伝われば幸いである．

@@h2_heading
Contents
@@
\toc

## Gelfand-Naimark の定理

非可換幾何学（Noncommutative Geometry）という言葉を始めに言い出した人は誰だろうか．
正確には分からないが，1940〜1960年台の数学の発展を鑑みるに，おそらくこの頃には素朴な発想としては考えられていたのではないかと思う．
だが非可換幾何学を一つの数学の分野として確立したのは間違いなくフランスの数学者 A. Connes（コンヌ）であろう[^1]．
彼の著書である Noncommutative Geometry（\cite{connes1994noncommutative}）は非可換幾何学に関する解説においては必ずと言っていいほど引用される．

この Connes による非可換幾何学の出発点となるのが，これから解説する Gelfand-Naimark（ゲルファント-ナイマーク）の定理である．
Gelfand-Naimark の定理を正確に述べるためには少し準備が必要であるので，先に Gelfand-Naimark の定理から導かれる考え方を述べておきたい．

それは
@@center
**空間と可換環が対応する**
@@
というものである[^2]．

### $C^*$環
Gelfand-Naimark の定理は$C^*$環（「シースター環」と読む）という関数解析で現れる対象に関する定理である．
関数解析に触れたことがない読者もいると思うので，まずは Banach （バナッハ）空間の説明から始めたい．なお，関数解析の教科書として \cite{kuroda1980kansuu,hiai_yanagi1995hilbert,douglas1998banach} を挙げておく．後ろ二つは $C^*$ 環についても触れており，\cite{douglas1998banach} には Gelfand-Naimark の定理の証明も載っている．

複素線型空間 $V$ にノルム $\| \cdot \|$が定まっているとき，その線型空間 $V$ とノルムの組 $(V,\|\cdot\|)$ を**複素ノルム空間**という．

複素ノルム空間はそのノルムから定まる距離 $d(v,w) := \|v - w\|$ により距離空間と見做せるが，この距離に関して完備となるノルム空間を**複素 Banach 空間**という．

また，複素Banach 空間 $(V,\| \cdot \|)$ のノルムが $V$ 上の内積 $\langle \cdot, \cdot \rangle$ によって $\|v\| = \langle v, v \rangle^{1/2}$ として定められているとき，
$V = (V,\langle \cdot, \cdot \rangle)$ を**複素 Hilbert （ヒルベルト）空間**という．

なお，係数体を $\R$ に変えることで実 Banach 空間や実 Hilbert 空間を考えることもできる．
しかし本稿では特に扱わないため，以下では単に Banach 空間や Hilbert 空間と言った際には複素 Banach 空間および複素 Hilbert 空間を意味するものとする．

以下に Banach 空間の例をいくつか挙げる．

\example{有限次元複素ベクトル空間 $\C^n$}{
有限次元複素ベクトル空間 $\C^n$ は標準的なノルム
$$ \|x\| := (x_1 \bar{x_1} + \cdots + x_n \bar{x_n})^{1/2}, \ \forall x = (x_1, \dots, x_n) \in \C^n$$
により Banach 空間である．
なお，上のノルムは標準的な内積 $\langle x,y \rangle = x_1 \bar{y_1} + \cdots + x_n \bar{y_n}$ から定まるノルムであるため，$\C^n$ は特に Hilbert 空間である．
}

\example{二乗総和可能数列のなす空間 $\ell^2$}{
複素数のなす数列 $(x_1,x_2,\dots)$ であって，各項の絶対値の二乗の和が有界となるもの全体を $\ell^2$ とかく．すなわち，
$$\ell^2:=\{(x_1,x_2,\dots) \mid x_i \in \C, \  \sum_{i=1}^{\infty} |x_i|^2 < \infty \}$$
と定義する．
この時，$\ell^2$ 上の内積が 
$$\langle (x_1,x_2,\dots), (y_1,y_2,\dots)\rangle := \sum_{i=1}^{\infty} x_i\bar{y_i}$$
で定まり，$\ell^2$ は Hilbert 空間（従って Banach 空間）となる．
}

\example{連続関数のなす空間 $C(X)$}{
コンパクト Hausdorff 空間 $X$ に対して，
$$C(X):=\{f:X \rightarrow \mathbb{C} \mid f は連続\}$$
と定義すると，一様ノルム（$\|f\|:=\sup_{x \in X}|f(x)|$ ）により $C(X)$ はBanach空間である．
}

\example{有界線型作用素のなす空間 $B(V,W)$}{
$V,W$ を Banach 空間とするとき，線型写像 $T : V \ra W$ に対して
$$\|T\| := \sup_{\|v\| = 1}\|Tv\|$$
とし，
$$B(V,W):=\{T:V \rightarrow W \mid \|T\| < \infty \}$$
と定義すると，$B(V,W)$ は Banach 空間である．
特に $W=V$ のとき，$B(V,V)$ を $B(V)$ とかく．$B(V,W)$ の元 $T$ は**有界線型作用素**と呼ばれる．

なお，$\dim V < \infty$ のとき，$V$ の基底を固定することで $B(V)$ は　$M_n(\C)$ と同一視できる．
}

さて，話を次に進めよう．
以降においては $X$ はコンパクト Hausdorff 空間を表し，$V$ は Banach 空間，$H$ は Hilbert 空間を表すものとする．

上でいくつか Banach 空間の例を挙げたが，その中で $C(X)$ と $B(V)$ には以下の様にして積を定めることができる:

$$(fg)(x):=f(x)g(x), \quad \forall f,g \in C(X), \ x \in X$$
$$(TS)v := T(Sv), \quad \forall T,S \in B(V), \ v \in V$$

これらの積とスカラー倍により $C(X)$ および $B(V)$ は $\C$-代数となるが，さらにこれらの積はそれぞれ次の不等式を満たす:
$$\|f g\| \leq \|f\|\|g\|, \quad \forall f,g \in C(X)$$
$$\|TS\| \leq \|T\| \|S\|, \quad \forall T,S \in B(V)$$

このような Banach 空間 $A$ に不等式 $\|ab\| \leq \|a\| \|b\|, \forall a,b \in A$ を満たす様な $\C$-代数の構造が定まっているとき，$A$ を（正確には $A$ とその$\C$-代数の構造の組を）**Banach 環**あるいは **Banach 代数**という．

$B(V)$ の例から分かる様に，Banach 環は一般には**可換とは限らない**．一方，$C(X)$ は可換な Banach 環である．

$C(X)$ にはさらに次の様な **$\ast$-演算**（「スター演算」と読む）と呼ばれる演算も定まる:

$$\ast : C(X) \ra C(X) ; f \mapsto f^*\  (f^*(x) := \overline{f(x)})$$

この $\ast$-演算は以下の3つの性質をもつ:

$$ \ast : C(X) \ra C(X) は共役線形,\quad  (f^*)^* = f, \quad (fg)^* = g^*f^*, \quad (\forall f,g \in C(X))$$

一般に，Banach 環 $A$ に $\ast$-演算 $\ast : A \ra A$ が定まり，

$$ \ast : A \ra A は共役線形,\quad  (a^*)^* = a, \quad (ab)^* = a^*b^*, \quad (\forall a,b \in A)$$

を満たすとき，$A$（と $\ast$ の組）を **Banach$\ast$環**（「Banach スター環」と読む）あるいは **Banach$\ast$代数**という．
上で述べたことから $C(X)$ は Banach$\ast$環である．では $B(V)$ についてはどうだろうか．

一般の Banach 空間 $V$ に対しては $B(V)$ が $\ast$-演算を持つとは限らない．
しかし，Hilbert 空間 $H$ の場合には Riesz の表現定理により $T \in B(H)$ に対して共役作用素 $T^* \in B(H)$ を一意にとることができて，
$T \mapsto T^*$ を $\ast$-演算として $B(H)$ は Banach$\ast$環となる．\\
（なお，$B(V) = M_n(\C)$ である場合には，$T^*$ は元の行列 $T$ の転置共役に一致する）．

従って $C(X)$ および $B(H)$ はどちらも Banach$\ast$環となるが，これらはそれぞれ次の性質を満たす: 

$$\|f^*f\| = \|f\|^2, \quad \forall f \in C(X)$$
$$\|T^*T\| = \|T\|^2, \quad \forall T \in B(H)$$

一般に Banach$\ast$環 $A$ が**$C^*$-identity** と呼ばれる次の性質
$$\|a^*a\| = \|a\|^2, \ \forall a \in A$$
を満たす時，$A$ を**$C^*$環**あるいは**$C^*$代数**という．


上で述べたことから $C(X)$ および $B(H)$ はどちらも$C^*$環の例になっている[^3]．

しかし，$C(X)$ と $B(H)$ には一つ大きな違いがある．
それは $C(X)$ の積は**可換**であるが $B(H)$ の積は**非可換**であるという点である
（例外として $\dim H = 1$ のときには $B(H) = \C$ となり積は可換になる）．Banach 環がそうであったように，$C^*$環においても一般にその積構造は可換とは限らない．

では $C(X)$ の他に可換な$C^*$環の例は存在するだろうか．答えを言ってしまうと，実はそのようなものは本質的には存在しない．
そしてこれを主張するのが冒頭に述べた Gelfand-Naimark の定理であり，その命題は次の形で述べられる:

\theorem{Gelfand-Naimark の定理}{
任意の単位的可換$C^*$環 $A$ に対して[^4]，あるコンパクト Hausdorff 空間 $\hat{A}$ が存在し，
$$A \cong C(\hat{A})$$
となる[^5]．
}

つまり，どんな$C^*$環であってもその積構造が可換（かつ単位元を持つ）であれば，それはある空間上の連続関数環と"同じ"と見做せるのである．

この事実が非可換幾何学という思想とどのように結びついていくのか，次節ではそのことについて説明したい．

### Gelfand 双対性

Gelfand-Naimark の定理は$C^*$環の研究という観点から見れば，可換$C^*$環という特別なクラスの$C^*$環に対する表現定理である．これ自体可換$C^*$環を完全に特徴づけているという点で十分素晴らしい結果ではあるが，ここでは次の点に注目したい．それは，
@@center
**任意の単位的可換$C^*$環には関数環がそれと同型になるようなコンパクト Hausdorff 空間が対応する**
@@
という点である（逆に任意のコンパクト Hausdorff 空間 $X$ には関数環 $C(X)$ を考えることで単位的可換$C^*$環を対応させることができる）．

特に，任意のコンパクト Hausdorff 空間 $X$ に対する連続関数環 $C(X)$ に対応するコンパクト Hausdorff 空間 $\widehat{C(X)}$ は $X$ と同相であり，この対応は同型の違いを除いて一対一であることがわかる．

さらにコンパクト Hausdorff 空間の間の連続写像 $f : X \ra Y$ に対して，その引き戻し $f^* :C(Y) \ra C(X)$ は単位的可換$C^*$環の間の$\ast$-準同型（$\C$代数の準同型であって $\ast$ 演算を保つもの）であり，逆に単位的可換$C^*$環の間の$\ast$-準同型 $\varphi: A \ra B$ は対応するコンパクト Hausdorff 空間の間の連続写像 $\varphi^*: \hat{B} \ra \hat{A}$ を誘導する.

以上のことを圏の言葉でまとめると，Gelfand-Naimark の定理は次のようにも言い換えられる:


\theorem{Gelfand 双対性}{
コンパクト Hausdorff 空間と連続写像のなす圏は，単位的可換$C^*$環と$\ast$-準同型のなす圏と反変同値である[^6]．
}

つまり，コンパクト Hausdorff 空間を調べることは単位的可換$C^*$環を調べることと（ある意味で）同値になるのである．
そしてこれが冒頭で述べていた
@@center
**空間と可換環が対応する**
@@
ということの意味である．

さらに上記の Gelfand 双対性は局所コンパクト Hausdorff 空間のなす圏と（単位的とは限らない）可換$C^*$環のなす圏の間の反変同値に拡張することができ[^7]，
位相空間における種々の性質や操作を以下の様に$C^*$環の言葉に翻訳することができる: 


|局所コンパクト Hausdorff 空間|可換$C^*$環|
|:---:|:---:|
|コンパクト|単位元を持つ|
|開集合|両側閉イデアル|
|閉集合|商$C^*$環|
|距離化可能|可分|
|一点コンパクト化|単位元の付加|
|Stone-Čech コンパクト化|乗法子環|
|直積|テンソル積|


さて，このように可換$C^*$環と位相空間（局所コンパクト Hausdorff 空間）は互いに対応しており，その対応は空間の上の関数環をとるという形で与えられている．

一方，$B(H)$ の例で見た様に，一般に$C^*$環は可換とは限らない．そこで出てくるのが
@@center
**非可換な$C^*$環を"非可換位相空間"と見做す**
@@
という考え方である．

つまり, Gelfand 双対性によって可換な $C^∗$ 環をコンパクト Hausdorff 空間と見做し, その同一視の延長として，一般の非可換な $C^∗$ 環を位相空間の非可換類似物，すなわち"**非可換位相空間**"と考えようというわけである[^8]. 

そして一度この
@@center
**非可換$C^*$環 = 非可換位相空間**
@@
という見地に立てば，その非可換空間上での"幾何学"を展開したいというのは自然な発想であろう．

これが非可換幾何学の思想的背景であり[^9]，この素朴な着想を元に実際の理論を構築・発展させ，具体例の提示や他分野への応用までをも一挙に押し進めたのが冒頭で言及した数学者 Connes なのである．

以下ではこの Connes による非可換幾何学で扱う対象や非可換空間の具体例，非可換幾何学の応用について述べる．なお関連する事項が多岐に渡るため，以降の解説においてはある程度の予備知識を仮定する．

## 非可換幾何学に現れる対象

この節では実際に非可換幾何学で扱われる概念について解説したい．
なお，それぞれの項目についての詳細な説明は別の機会に譲ることとし（詳しく書くとキリがない），ここではおおよその概要のみ述べるにとどめる．

### $K$理論と巡回コホモロジー

さて，何か位相空間があったときにそれを調べる道具は何であろうか．もちろん調べる方向性にもよるがその一つはコホモロジー（あるいはホモロジー）であろう．
そうすると当然の疑問として
@@center
非可換空間に対するコホモロジーの類似物は何か？
@@
というものが思い浮かぶ．

この方面として主要な研究対象となっているものが**$K$理論**および**巡回コホモロジー**である．

#### $K$理論

$K$理論は元々 Grothendieck（グロタンディーク）により Hirzebruch-Riemann-Roch（ヒルツェブルフ-リーマン-ロッホ）の定理を非特異代数多様体に対して一般化する目的のために導入され（代数的$K$理論），
その後に Atiyah（アティヤ）と Hirzebruch が Grothendieck の定理の可微分版を考える目的で位相的$K$理論を定義した（このあたりの歴史については[こちら](../../K-Theory/early_history)を参照）．

環 $R$ に対する代数的$K$群（正確には$K_0$群）$K^{alg}(R)$ は $R$ 上の有限生成射影加群の同型類を用いて定義され，
コンパクト Hausdorff 空間に対する位相的$K$群（正確には$K^0$群）$K_{top}(X)$ は $X$ 上のベクトル束の同型類を用いて定義される．

$C^*$環は環でもあるのでその代数的$K$群を考えることができるが，以下で説明する様に$C^*$環の$K$群はある意味で位相的$K$群の一般化とも考えられる．

前節でコンパクト Hausdorff 空間 $X$ と可換$C^*$環 $C(X)$ が対応することをみた．
実は $C(X)$ 上の有限生成射影加群と $X$ 上のベクトル束の同型類が対応することが知られており（Serre-Swan の定理），
この対応を通じて

$$K^{alg}(C(X)) \cong K_{top}(X)$$

が成り立つ．

さらに位相的$K$群に対する種々の議論を $C(X)$ の言葉を使って書き直すことで，それらの議論の多くが非可換$C^*$環に対する$K$群に対しても成り立つことが分かり，
特に Bott 周期性から$C^*$環に対しては高次の$K$群を位相空間の場合と同様に定義することができる[^10]．

このように位相的$K$理論はほぼそのまま非可換$C^*$環の場合に拡張され，非可換空間に対するコホモロジー理論の一種と考えられるのである[^11]．

この$C^*$環に対する$K$群の性質や応用については$C^*$環の分類理論や指数定理の一般化などと並行して発展し，今もなお研究が続けられている．

#### 巡回コホモロジー

> 執筆中


### 非可換多様体（スペクトラル・トリプル）

$C^*$環を非可換位相空間と思ってその上で幾何学を展開しようと考えると，当然次の疑問が思い浮かぶ:
@@center
非可換多様体にあたるものは何か？
@@
つまり多様体 $M$ 上の無限階微分可能な関数のなす環 $C^{\infty}(M)$ の非可換類似は何か？という問いである．

実は現在のところ，筆者の知る限りにおいてこの問いに対する明確な回答は得られていない[^12]．
しかしながら，非可換 Riemann 多様体（より正確には非可換 $\Spinc$ 多様体）については Connes により **スペクトラル・トリプル**（spectral triple）という概念が提案されており，Connes を始めとした多数の研究者により多くの具体例が構成されている．

スペクトラル・トリプルの概念の元になるのはコンパクト $\Spinc$ 多様体上の Dirac 作用素である．
ここでは詳しくは解説しないが，$\Spinc$ 多様体と呼ばれる多様体に対してはスピノール束と呼ばれるベクトル束を定義することができ，
その $L^2$ 切断全体のなす Hilbert 空間上に Dirac 作用素と呼ばれる（非有界）線型作用素が構成できる．

Connes はこの $\Spinc$ 多様体 $M$ に対する Dirac 作用素 $D$ とそれが作用する $L^2$ 切断全体のなす Hilbert 空間 $H$ から構成される三つ組 $(C^\infty (M),H,D)$ が元の多様体の距離構造や次元，体積要素といった量を特徴付けることを見出した．
さらにその特徴付けにおいて Dirac 作用素が満たすべき性質を以下の様に抽象化した:

1. $D$ は自己共役
2. 任意の $f \in C^\infty(M)$ に対して $[D,f] := Df -fD$ は $H$ 上の有界作用素
3. $D$ のレゾルベントはコンパクト

ここで $C^\infty(M)$ が可換$C^*$環 $C(X)$ の稠密な部分$\ast$環であることと，上記の性質において $C^\infty(M)$ の可換性を使っていないことに注意すれば，上記の三つ組 $(C^\infty (M),H,D)$ を
- $C^*$環 $A$ の中で稠密な部分$\ast$代数 ${\cal A}$
- ${\cal A}$ の忠実表現 $\rho: {\cal A} \ra H$
- $H$ 上の非有界作用素 $D$ 
で上記の性質1~3を満たすもののなす組 $({\cal A},H,D)$ として一般化することができる．この三つ組がスペクトラル・トリプルである．

スペクトラル・トリプルに対しては，三つ組 $(C^\infty (M),H,D)$ による $\Spinc$ 多様体の距離構造などの特徴付け（環 $C^\infty (M)$ の可換性は用いられない！）を用いることで，その上の距離構造や次元，体積要素といった概念を定義することができる．すなわち，その上の"幾何"を考えることができるのである．

スペクトラル・トリプルは非可換幾何学における中心的な研究対象の一つであり，その上で成り立つ定理（例えばスペクトラル・トリプル上の指数定理が Connes-Moscovici（コンヌ-モスコビッチ）\cite{connes_moscovici1995local} により示されている）やその概念の一般化（単位元を持たない場合や実構造を考慮する場合など（$cf.\ e.g.$ \cite{varilly2006introduction}）），の他，具体例の構成（以下の非可換空間の例を参照）など，様々な研究が進められている．



## 非可換空間の例

> 執筆中


## 非可換幾何の応用

一口に「応用」と言ってもその意味するところは様々である．ここでは便宜上「直接的応用」と「間接的応用」に分けて関連する事項について紹介する．

### 直接的応用
"応用"として分かりやすいのは「何かその分野の理論や定理を使って他分野の問題を解決する」というものである．便宜上これを直接的応用と呼ぼう．

非可換幾何の直接的応用で有名なものとしては Novikov（ノビコフ）予想や Gromov-Lawson（グロモフ-ローソン）予想，Kadison-Kaplansky（カディソン-カプランスキー）予想の部分的解決というものがある．
前者二つは幾何学における予想であり，三つ目は作用素環論における予想である．

これらはいずれも Baum-Connes（バウム-コンヌ）予想という作用素環の $K$ 理論に関する予想から導かれるもので，Baum-Connes 予想は非可換幾何学における最重要の未解決問題の一つと見做されている（Baum-Connes 予想の解説としては \cite{valette2002introduction} がある）．

他の直接的応用としては，Bellissard（ベリサール）による整数量子ホール効果の説明（$cf.\ e.g.$ \cite{bellissard1986k,bellissard1986ordinary}）などが挙げられる．この Bellissard による仕事を含め，非可換幾何学の物性物理への応用については和書 \cite{kubota2023bussei} が詳しい．

また物理方面への応用は物性物理以外にも様々に考えられており，\cite{connes1994noncommutative,connes_marcolli2008quantum,connes_marcolli2008walk} などで解説がなされている他，最近（2023年時点）では [Gravity, Noncommutative Geometry, Cosmology](https://www.birs.ca/events/2023/5-day-workshops/23w5081) といった研究集会が開催されるなど，現在進行形で活発に研究が続けられているようである．

幾何学や作用素環，物理方面以外での応用として有名なものとしては，Connes による Riemann 予想へのアプローチ（$cf.\ e.g.$ \cite{connes1999trace,connes_marcolli2008quantum}）が挙げられる．
Connes による Riemann（リーマン）予想への挑戦は1990年代から続いているが，2000年代後半からは一元体に対する研究に舵を切ったのか非可換幾何によるアプローチはあまり見られなくなったように思われた．しかし最近の論文（$cf.\ e.g.$ \cite{connes_consani2023spectral,connes_consani2023bc}）では再び非可換幾何の道具を用いているようで，共著者の Consani（コンサニ）と共に今後も Riemann 予想への挑戦を続けるものと思われる．

### 間接的応用

一方，"応用"といった際には上述の直接的応用の他に「新しいアプローチや見方を提供する」といったものも応用の例として考えられる．これを直接的応用と対比して間接的応用と呼ぼう．

非可換幾何の間接的応用として思い浮かぶものをキーワードだけではあるがいくつか挙げる（非可換空間の具体例と重複するものもある）:

- 作用素環の$K$理論を用いた指数定理の一般化（$cf.\ e.g.$ \cite{connes1982survey,connes_moscovici1982l2,roe1993coarse}）．

- 量子化とシンプレクティック簡約の可換性を主張する Guillemin–Sternberg 予想に対する作用素環の$K$理論を用いたアプローチ（$cf.\ e.g.$ \cite{hochs_landsman2008guillemin,higson_song2014k}）

- Manin（マニン）による虚数乗法の実二次体類似を考える real multiplication プログラム（$cf.$ \cite{manin2004real,taylor2006noncommutative}）．

- Mesland-Şengün（メスランド-シェングン）による保型形式と作用素環の$K$理論の関係に関する研究（$cf.$ \cite{mesland_sengun2018hecke,mesland_sengun2020hecke,mesland_sengun2020k,mesland_sengun2022equal}）．

- $p$進群 $G$ に対する被約群$C^*$環と $G$ の tempered dual の Bernstein（ベルンシュタイン）成分に関する Aubert-Baum-Plymen-Solleveld（オーベール-バウム-プリメン-ソレフェルト）によるABPS予想（$cf.$ \cite{aubert_baum_plymen_solleveld2014geometric}）．

- Consani-Marcolli（コンサニ-マルコリ）による Mumford（マンフォード）曲線や Arakelov（アラケロフ）幾何と関係する研究（$cf.$ \cite{consani_marcolli2003spectral,consani_marcolli2004noncommutative}）．

- Connes-Moscovici によるモジュラー Hecke（ヘッケ）環と葉層構造に関する研究（$cf.$ \cite{connes_moscovici2003modular,connes_moscovici2003rankin}）．

- 代数体や関数体，局所体等から構成される量子統計力学系である Bost-Connes 系に関係した話題（$cf.\ e.g.$ \cite{bost_connes1995hecke,connes_marcolli_ramachandran2004kms,yalkinoglu2013arithmetic}）．

- 力学系やフラクタル集合に対するスペクトラル・トリプルの構成[^13]（$cf.\ e.g.$ \cite{connes1994noncommutative,pearson_bellissard2009noncommutative,samuel2010commutative,whittaker2013spectral}）．

もちろん上記以外にも非可換幾何学によるアプローチがなされている研究は数多くあり，上記に挙げたものも含め研究の状況は様々である．興味を持たれた読者は上記のキーワードを元に各自で調べられたい（なお非可換幾何の応用例がまとめられた文献として \cite{connes_marcolli2008walk} がある）．
このサイトでも上記のうちいくつかについてはいずれ解説を行いたいと考えている．


## 非可換幾何の教科書

最後に，非可換幾何に興味を持たれた方のためにいくつか参考になる本を紹介しておこう．

非可換幾何学の教科書としてはまず Connes 自身による \cite{connes1994noncommutative} を挙げるべきだろう．分野の創始者の著作だけあり，その哲学や思想が伝わってくる名著である．ただし，この本は頭から通読するようなものではなく，初学者が教科書として使用するにはあまり適していないと思われる．むしろ副読本として傍に置いておき，気が向いたタイミングでページをめくることで研究のインスピレーションが刺激される，といった類の本である[^14]．

この Connes の本の前身となった講義録 \cite{connes1994geometrie} （フランス語）を和訳したものが \cite{connes__maruyama1999noncommutative} である．日本語で書かれた非可換幾何学についてのまとまった本でおそらく現状唯一のものである．ただし，上記の教科書 \cite{connes1994noncommutative} の方が内容が豊富かつ Connes 自身のホームページで pdf ファイルが公開されているため，文献としてはそちらの方をお勧めする[^15]．

なお，非可換幾何の本ではないが和書つながりで関係が深いものとして \cite{moriyoshi_natsume2001sayousokan} がある．作用素環の$K$理論についての概説と作用素環を用いた指数定理の一般化の話が載っており，非可換幾何に関する話題も多数載っている．ちなみにこの本は現在品切れ状態であるが，[この日本数学会のページ](https://mathsoc.jp/publication/SugakuMemoirs/)から pdf ファイルをダウンロードすることができる．

また，Connes の本よりも入門的で，教科書としても使用できそうな本には\cite{khalkhali2009basic} と \cite{gracia_varilly_figueroa2001elements} がある．

前者の \cite{khalkhali2009basic} は非可換幾何の概説といった感じの本で，ページ数も少なく具体例も豊富なので非可換幾何の雰囲気をざっくりと掴むにはよいと思う．$K$理論に関する記述は少ないものの，巡回コホモロジーについて丁寧に解説されている．

後者の \cite{gracia_varilly_figueroa2001elements} は$C^*$環の基礎事項から$K$理論，巡回コホモロジーにスペクトラル・トリプル．さらにはいくつかの応用例までと，かなりの内容を盛り込んだ力作である．
著者の専門を反映してか物理的な背景に触れた説明もあり，他の本ではあまり触れられない様な事項についても言及されている．一方で独自色が強いために説明が回りくどいと感じられる箇所が無いわけではない．大部であるため通読には向かないと思うが，非可換幾何の基礎事項を証明含めて網羅している現状唯一の本である[^16]．

その他，非可換幾何学に関する解説や文献はネット上でも数多く見つけることができる．しかしそのほとんどは英語で書かれており，非可換幾何に関する日本語の文献は驚くほど少ない．本サイトがその溝を少しでも埋めることができれば幸いである．


## 参考文献

* \biblabel{aubert_baum_plymen_solleveld2014geometric}{[ABPS1]} [ABPS1] {{ref aubert_baum_plymen_solleveld2014geometric}}

* \biblabel{bellissard1986k}{[B1]} [B1] {{ref bellissard1986k}}

* \biblabel{bellissard1986ordinary}{[B2]} [B2] {{ref bellissard1986ordinary}}

* \biblabel{bost_connes1995hecke}{[BC1]} [BC1] {{ref bost_connes1995hecke}}

* \biblabel{connes1982survey}{[C1]} [C1] {{ref connes1982survey}}


* \biblabel{connes1985non}{[C2]} [C2] {{ref connes1985non}}

* \biblabel{connes1994geometrie}{[C3]} [C3] {{ref connes1994geometrie}}

* \biblabel{connes1994noncommutative}{[C4]} [C4] {{ref connes1994noncommutative}}

* \biblabel{connes1999trace}{[C5]} [C5] {{ref connes1999trace}}


* \biblabel{connes__maruyama1999noncommutative}{[C6]} [C6] {{ref connes__maruyama1999noncommutative}}


* \biblabel{connes_consani2023spectral}{[CC1]} [CC1] {{ref connes_consani2023spectral}}

* \biblabel{connes_consani2023bc}{[CC2]} [CC2] {{ref connes_consani2023bc}}



* \biblabel{connes_marcolli2008quantum}{[CM1]} [CM1] {{ref connes_marcolli2008quantum}}

* \biblabel{connes_marcolli2008walk}{[CM2]} [CM2] {{ref connes_marcolli2008walk}}


* \biblabel{connes_marcolli_ramachandran2004kms}{[CMR1]} [CMR1] {{ref connes_marcolli_ramachandran2004kms}}

* \biblabel{connes_moscovici1982l2}{[CMo1]} [CMo1] {{ref connes_moscovici1982l2}}


* \biblabel{connes_moscovici1995local}{[CMo2]} [CMo2] {{ref connes_moscovici1995local}}

* \biblabel{connes_moscovici2003modular}{[CMo3]} [CMo3] {{ref connes_moscovici2003modular}}

* \biblabel{connes_moscovici2003rankin}{[CMo4]} [CMo4] {{ref connes_moscovici2003rankin}}


* \biblabel{consani_marcolli2003spectral}{[CoM1]} [CoM1] {{ref consani_marcolli2003spectral}}

* \biblabel{consani_marcolli2004noncommutative}{[CoM2]} [CoM2] {{ref consani_marcolli2004noncommutative}}




* \biblabel{douglas1998banach}{[D1]} [D1] {{ref douglas1998banach}}


* \biblabel{gracia_varilly_figueroa2001elements}{[GVF1]} [GVF1] {{ref gracia_varilly_figueroa2001elements}}



* \biblabel{hiai_yanagi1995hilbert}{[HY1]} [HY1] {{ref hiai_yanagi1995hilbert}}


* \biblabel{higson_song2014k}{[HS1]} [HS1] {{ref higson_song2014k}}


* \biblabel{hochs_landsman2008guillemin}{[HL1]} [HL1] {{ref hochs_landsman2008guillemin}}


* \biblabel{khalkhali2009basic}{[K1]} [K1] {{ref khalkhali2009basic}}

* \biblabel{kubota2023bussei}{[Kub1]} [Kub1] {{ref kubota2023bussei}}

* \biblabel{kuroda1980kansuu}{[Kur1]} [Kur1] {{ref kuroda1980kansuu}}

* \biblabel{maeda_sako2020noncommutative}{[MS1]} [MS1] {{ref maeda_sako2020noncommutative}}

* \biblabel{manin2004real}{[M1]} [M1] {{ref manin2004real}}

* \biblabel{mesland_sengun2018hecke}{[MeS1]} [MeS1] {{ref mesland_sengun2018hecke}}

* \biblabel{mesland_sengun2020hecke}{[MeS2]} [MeS2] {{ref mesland_sengun2020hecke}}

* \biblabel{mesland_sengun2020k}{[MeS3]} [MeS3] {{ref mesland_sengun2020k}}

* \biblabel{mesland_sengun2022equal}{[MeS4]} [MeS4] {{ref mesland_sengun2022equal}}


* \biblabel{moriyoshi_natsume2001sayousokan}{[MN1]} [MN1] {{ref moriyoshi_natsume2001sayousokan}}


* \biblabel{pearson_bellissard2009noncommutative}{[PB1]} [PB1] {{ref pearson_bellissard2009noncommutative}}



* \biblabel{roe1993coarse}{[R1]} [R1] {{ref roe1993coarse}}


* \biblabel{samuel2010commutative}{[S1]} [S1] {{ref samuel2010commutative}}



* \biblabel{taylor2006noncommutative}{[T1]} [T1] {{ref taylor2006noncommutative}}


* \biblabel{valette2002introduction}{[V1]} [V1] {{ref valette2002introduction}}


* \biblabel{varilly2006introduction}{[Var1]} [Var1] {{ref varilly2006introduction}}


* \biblabel{whittaker2013spectral}{[W1]} [W1] {{ref whittaker2013spectral}}


* \biblabel{yalkinoglu2013arithmetic}{[Y1]} [Y1] {{ref yalkinoglu2013arithmetic}}



## 脚注

[^1]: 実は非可換幾何学にはいくつか異なるアプローチがある．この記事で解説する A.Connes による作用素環をベースとしたものの他，\cite{maeda_sako2020noncommutative} で解説されている様な様なシンプレクティック多様体の変形量子化に関わるものや，代数多様体の非可換化を考える非可換代数幾何もある．だがこれらいずれにおいても Gelfand-Naimark の定理や，そこから導かれる「空間=可換環」という考え方はその議論の出発点になっている．

[^2]: 実はこの形の定理には Gelfand-Naimark の定理の他に，アフィンスキームと可換環の対応を主張する代数幾何学における定理や，Bool代数と Stone 空間の対応をいう Stone の定理など，考えている空間と環の種類に応じて様々なものがある．

[^3]: $C^*$環の他の例としては，$B(H)$ の部分$\C$代数であって $\ast$-演算とノルム位相で閉じているもの（すなわち $\B(H)$ の部分$C^*$環）などがある．実は任意の$C^*$環はある Hilbert 空間 H に対する $B(H)$ の部分$C^*$環と同型（$\ast$-同型）になることも知られており，この定理も Gelfand-Naimark の定理と呼ばれる．

[^4]: 単位元を持つ$C^*$環を単位的$C^*$環という．一般に$C^*$環の定義においては単位元の存在を仮定しない．ここで述べている Gelfand-Naimark の定理は単位元を持たない場合にも拡張することができて，任意の単位元を持たない可換$C^*$環はある局所コンパクト Hausdorff 空間上 $X$ の"無限遠で消える"連続関数全体 $C_0(X)$ と等距離$\ast$-同型になる．

[^5]: ここで $\cong$ は等距離$\ast$-同型（すなわち$\C$代数の同型であって，$\ast$-演算とノルムを保つもの）を表している．

[^6]: 代数的な条件のみで規定される$\ast$-準同型が$C^*$環のなす圏の射として用いられることに疑問を抱かれる読者の方もいるかもしれない．実は $C^*$環の間の任意の単射$\ast$-同型は自動的に等距離同型になるため（これは Gelfand-Naimarkの定理の帰結である），射の定義にノルムに関する条件を課さなくてもよいのである．なおこの事実には $C*$-identity が本質的に効いている．

[^7]: 脚注4でも触れたが，Gelfand-Naimark の定理は$C^*$環が単位元を持たない場合にも拡張でき，その帰結として局所コンパクト Hausdorff 空間のなす圏と可換$C^*$環のなす圏が反変同値になる．なお，局所コンパクト Hausdorff 空間における射としては，一点コンパクト化した空間の間の基点を保つ連続写像を考える．

[^8]: 注意してほしいのは，「"非可換位相空間"という概念が別にあって非可換$C^*$環がそれと対応している」という**わけではない**という点である．"非可換空間"というのはどちらかと言うと標語に近く，非可換環を空間と見做す（あるいはその空間上の"関数環"と見做す）意味でそのような言い方をするのである．

[^9]: 実際には Connes が非可換幾何学を展開した理由は Gelfand-Naimark の定理だけではない，例えば von Neumann 環を非可換測度空間と見做す思想や，量子力学に対する Heisenberg の行列力学，Atiyah-Singer の指数定理などもその動機の背景にある．

[^10]: 一般の環に対する高次の代数的$K$群の定義は，Bott 周期性を用いて定義される$C^*$環に対する高次の$K$群の定義よりも遥かに難しい．なお$C^*$環に対する高次の代数的$K$群と Bott 周期性から定義される高次の$K$群は一般に一致しない．

[^11]: $C^*$環に対する$K$理論は共変関手であるので正確にはホモロジー理論と呼ぶべきかもしれない．

[^12]: 実は任意の $C^\infty$ 多様体 $M,N$ に対して，$M \cong N \iff C^{\infty}(M) \cong C^{\infty}(N)$ であることが知られている．従って $C^{\infty}(M)$ がその可換な対象と一致するような環のクラスがあればよいのだが，そのようなものがまだ見つかっていないのである．

[^13]: 2015年頃に参加した力学系の集中講義の講演者の方が懇親会で「最近フランスとかの研究集会ではみんな $(A,H,D)$ とかいている」といった趣旨のことを言われていた記憶がある．

[^14]: 筆者の指導教員はこの本について「寝る前にパラパラ眺めるのがちょうどいい」と評していた．なお，実際にそれをやると興奮して眠れなくなる恐れがあるため注意が必要である．

[^15]:  正直なところ，この本の訳はあまりよろしくない．

[^16]: なおこの本については夏目利一氏が雑誌『数学』で[書評](https://www.jstage.jst.go.jp/article/sugaku1947/55/3/55_3_325/_pdf/-char/ja)を書かれているのでそちらも参考にされたい（なお，『数学』における夏目氏のレビューは大体いつも辛口である）．



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