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

となる．とりあえず現段階では，分配関数はただの規格化因子（の逆数）．
