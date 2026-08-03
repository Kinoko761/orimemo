---
layout: default
---

<script>
window.MathJax = {
  tex: {
    inlineMath: [['$', '$'], ['\\(', '\\)']],
    displayMath: [['$$', '$$'], ['\\[', '\\]']]
  }
};
</script>
<script defer src="https://cdn.jsdelivr.net/npm/mathjax@4/tex-chtml.js"></script>

## 関心事

$N$ 粒子系の一つの微視的状態は，位相空間 $\Gamma$ 上の1つの点 $x = (\mathbf{p},\mathbf{q})$（これを代表点という）で指定できる．代表点の一つ一つを根元事象と考え，微視的状態ごとに値が決まる物理量を確率変数 $A(x)$ と考える．特に，エネルギーの値を返す確率変数がハミルトニアン $H(x)$ である．ここで， $E=H(x)$ が実現する確率がボルツマン因子 $e^{-\beta E}$ に比例することを天下りに認めることにする．この仮定のもとで，統計力学を確率・統計の言葉でどこまで説明できるだろうか．

## 確率密度関数と分配関数

確率密度関数を $\rho_\beta (x) \propto e^{-\beta H(x)}$ とする．確率密度関数を位相空間 $\Gamma$ 全体で積分すると1にならなければならないので，規格化因子を $N_\beta$ とすると

$$
\int_\Gamma dx \ N_\beta\rho_\beta (x)  = N_\beta \int_\Gamma dx \ e^{-\beta H(x)}  =  1
$$

したがって

$$
N_\beta = \frac{1}{\int_\Gamma dx \ e^{-\beta H(x)}}
$$

右辺の分母を**分配関数**$Z(\beta)$という．

$$
Z(\beta) = \int_\Gamma dx \ e^{-\beta H(x)}
$$

分配関数を用いて確率密度関数を書くと

$$
\rho_\beta (x) = \frac{e^{-\beta H(x)}}{Z(\beta)}
$$

となる．とりあえず現段階では，分配関数 $Z(\beta)$ はただの規格化因子の逆数ということになる． $Z(\beta)$ はボルツマン因子を $x$ について積分したものだから，変数に $x$ は含まれないが， $\beta$ が含まれる．

### この確率密度関数は可視化できる？

$x$ は位相空間上の点 $(\mathbf{p},\mathbf{q})$ だから多次元( $N$粒子系なら $6N$ 次元)のベクトル．したがって確率密度関数 $\rho_\beta (x) $ は多次元空間における超曲面になるので，単純には可視化できない． $x$ から特定の2自由度だけ抜き出せば3次元空間上に曲面として描くことができる．

### 累積分布関数はない？

確率密度関数 $\rho(x)$ が決まったので，累積分布関数が決まるはず．確率論では確率密度関数よりも，それを積分した累積分布関数を考えるほうがいろいろと都合がよい気がする．しかし，ここで考えている確率密度関数の変数 $x$ は多次元ベクトルだから，単純に「 $x \leq x_0$ 」のような大小関係が存在しない．よって「 $-\infty$ から $x_0$ まで積分」みたいなこともできない．この意味では「累積分布関数」に相当するものはないと言える．ただし，「どこからどこまで累積する（積分する）か」を決めればよいわけだから，「 $\Gamma$ の特定の領域 $\Gamma_0 \subset \Gamma$ について積分する」ということはできる．そう考えると，分配関数はボルツマン因子を $\Gamma$ の全領域で積分したものだから，これは「規格化されていない累積分布関数」みたいなものかもしれない．


## 期待値とモーメント

確率密度関数 $\rho(x)$ が決まったので，微視的状態 $x$ ごとに決まる物理量 $A(x)$ の期待値は

$$
\langle A \rangle_\beta = \int_\Gamma dx \ A(x)\rho_\beta(x)
$$

のように書ける（物理では $A$ の期待値を $\mathrm{E}[A]$ のかわりに $\langle A \rangle$ で表す）．実験的に決定されるマクロな物理量は，すべて期待値である．特に，ハミルトニアン $H(x)$ の期待値は内部エネルギー $U$ と呼ばれていて

$$
U_\beta = \langle H(x) \rangle_\beta = \int_\Gamma dx \ H(x)\rho_\beta(x)
$$

である．期待値（＝1次モーメント）だけでなく， $n$ 次のモーメントも求めることができる．物理量 $A$ の2次の（中心化されていない）モーメントは

$$
\langle A^2 \rangle_\beta = \int_\Gamma dx \ A(x)^2\rho_\beta(x)
$$

となる．1次と2次のモーメントを使えば分散（2次の中心化モーメント）を求めることができる．

$$
 \mathrm{Var}_\beta[A(x)] = \langle A^2 \rangle_\beta - \langle A \rangle_\beta^2
$$





## キュムラント母関数とその微分係数

確率密度関数 $\rho(x)$ と確率変数 $A(x)$ が決まれば，各種の母関数（確率母関数，モーメント母関数，キュムラント母関数，特性関数）が決まるはず．確率変数の中でも最も重要なハミルトニアン $H(x)$ に関して，モーメント母関数とキュムラント母関数を求めてみる．

確率変数 $H(x)$ のモーメント母関数 $M_H(t)$ は $e^{tH(x)}$の期待値である．

$$
\begin{eqnarray}
M_H(t) &= \int_\Gamma dx \ e^{tH(x)}\rho_\beta(x) = \int_\Gamma dx \ e^{tH(x)}\frac{e^{-\beta H(x)}}{Z(\beta)} \\ &= 
\frac{1}{Z(\beta)}\int_\Gamma dx \ e^{(t-\beta)H(x)} = \frac{Z(\beta -t)}{Z(\beta)}
\end{eqnarray}
$$

確率変数 $H(x)$ のキュムラント母関数 $H_H(t)$ はモーメント母関数の対数をとったものである．

$$
K_H(t) = \ln M_H(t) = \ln Z(\beta -t) - \ln Z(\beta)
$$

キュムラント母関数の1次，2次の微分係数は，1次，2次の中心化モーメント（期待値および分散）を与える．実際に1次モーメントを計算してみると

$$
\begin{align}
\langle A \rangle_\beta &= \left.\frac{\partial K_H(t)}{\partial t} \right\vert_{t=0} 
\newline &= \left.\frac{\partial \ln Z(t-\beta)}{\partial t} \right\vert_{t=0}  
\newline &= -\frac{\partial \ln Z(\beta)}{\partial \beta} 
\end{align}
$$

となり，エネルギーの期待値は分配関数の対数 $\ln Z(\beta)$を使ってシンプルに書けることが分かる．ちなみに，このまま計算を続けていくと

$$
\begin{align}
\newline &= -\frac{1}{Z(\beta)}\frac{\partial Z(\beta)}{\partial \beta}
\newline &= -\frac{1}{Z(\beta)}\frac{\partial}{\partial \beta} \int_\Gamma dx e^{-\beta H(x)}
\newline &= \frac{1}{Z(\beta)} \int_\Gamma dx \  H(x) e^{-\beta H(x)}
\newline &= \int_\Gamma dx \ H(x) \rho_\beta(x)
\end{align}
$$

となり，確かに $H(x)$ の期待値になっている．

2次中心化モーメントも分配関数の偏微分で書けることがわかる．

$$
\begin{align}
\mathrm{Var}_\beta[A(x)] &= \left.\frac{\partial^2 K_H(t)}{\partial t^2} \right\vert_{t=0} 
\newline &= \left.\frac{\partial^2 \ln Z(t-\beta)}{\partial t^2} \right\vert_{t=0}  
\newline &= \frac{\partial^2 \ln Z(\beta)}{\partial \beta^2} 
\end{align}
$$

## ヘルムホルツ自由エネルギーとの関係

分配関数 $Z(\beta)$ の対数 $\ln Z(\beta)$ は，ヘルムホルツ自由エネルギー $F$ と次のような関係にある．

$$
F(\beta) = -\frac{1}{\beta} \ln Z(\beta)
$$

しかし，なんでそうなるのかはこの時点では説明できない．ちなみに， $\ln Z(\beta)$ にはマシュー関数という名前がついているらしい．

## [揺動散逸定理](fdt)


