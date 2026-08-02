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

微視的状態つまり位相空間上の点を根元事象 $x \in \Gamma$ と考え，ハミルトニアン $H(x)$ を確率変数として， $E=H(x)$ が実現する確率が $e^{-\beta E}$ に比例することを天下りに認めることにする．統計力学を確率・統計の言葉でどこまで説明できるだろうか．

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

となる．とりあえず現段階では，分配関数はただの規格化因子の逆数．

### この確率密度関数は可視化できる？

$x$ は位相空間上の点 $(\mathbf(p),\mathbf(q))$ だから本質的に多次元( $6N$ 次元)のベクトル．したがって確率密度関数 $\rho_\beta (x) $ は多次元空間における超曲面になるので，単純には可視化できない． $x$ から特定の2自由度だけ抜き出せば3次元空間上に曲面として描くことができる．

## 期待値とモーメント

確率密度関数 $\rho(x)$ が決まったので，微視的状態$x$ごとに決まる物理量 $A(x)$ の期待値は

$$
\langle A \rangle_\beta = \int_\Gamma dx \ A(x)\rho_\beta(x)
$$

のように書ける．特に，ハミルトニアン $H(x)$ の期待値は内部エネルギー $U$ と呼ばれていて

$$
U_\beta = \langle H(x) \rangle_\beta = \int_\Gamma dx \ H(x)\rho_\beta(x)
$$

である．期待値（＝1次モーメント）だけでなく， $n$ 次のモーメントも求めることができる．物理量 $A$ の2次の（中心化されていない）モーメントは

$$
\langle A^2 \rangle_\beta = \int_\Gamma dx \ A(x)^2\rho_\beta(x)
$$

となる．1次と2次のモーメントを使えば分散を求めることができる．

$$
\langle\langle A(x) \rangle\rangle_\beta = \langle A^2 \rangle_\beta - \langle A \rangle_\beta^2
$$

ただし $\langle\langle A \rangle\rangle$ は独自の記号で分散 $\mathrm{Var}[A]$ を表すことにする． 

## 累積分布関数はない？

確率密度関数 $\rho(x)$ が決まったので，累積分布関数が決まるはず...


## 母関数

確率密度関数 $\rho(x)$ が決まったので，各種の母関数（確率母関数，積率母関数，モーメント母関数，特性関数）が決まるはず．
