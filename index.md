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

確率密度関数を $\rho_H(x) \propto e^{-\beta H(x)}$ とする．確率密度関数を位相空間 $\Gamma$ 全体で積分すると1にならなければならないので，規格化因子を $k$ とすると

$$
\int_\Gamma dx \ k\rho_H(x)  = k \int_\Gamma dx \ e^{-\beta H(x)}  =  1
$$

したがって

$$
k = \frac{1}{\int_\Gamma dx \ e^{-\beta H(x)}}
$$

右辺の分母を**分配関数**$Z[H]$という．

$$
Z[H] = \int_\Gamma dx \ e^{-\beta H(x)}
$$

分配関数を用いて確率密度関数を書くと

$$
\rho_H(x) = \frac{e^{-\beta H(x)}}{Z[H]}
$$

となる．とりあえず現段階では，分配関数 $Z(\beta)$ はただの規格化因子の逆数ということになる．ここで分配関数はハミルトニアンについての汎関数であることを強調した．

### この確率密度関数は可視化できる？

$x$ は位相空間上の点 $(\mathbf{p},\mathbf{q})$ だから多次元( $N$粒子系なら $6N$ 次元)のベクトル．したがって確率密度関数 $\rho(x)$ は多次元空間における超曲面になるので，単純には可視化できない． $x$ から特定の2自由度だけ抜き出せば3次元空間上に曲面として描くことができる．

### 累積分布関数はない？

確率密度関数 $\rho_H(x)$ が決まったので，累積分布関数が決まるはず．確率論では確率密度関数よりも，それを積分した累積分布関数を考えるほうがいろいろと都合がよい気がする．しかし，ここで考えている確率密度関数の変数 $x$ は多次元ベクトルだから，単純に「 $x \leq x_0$ 」のような大小関係が存在しない．よって「 $-\infty$ から $x_0$ まで積分」みたいなこともできない．この意味では「累積分布関数」に相当するものはないと言える．ただし，「どこからどこまで累積する（積分する）か」を決めればよいわけだから，「 $\Gamma$ の特定の領域 $\Gamma_0 \subset \Gamma$ について積分する」ということはできる．そう考えると，分配関数はボルツマン因子を $\Gamma$ の全領域で積分したものだから，これは「規格化されていない累積分布関数」みたいなものかもしれない．

## 多次元の確率分布

「微視的状態ごとに値が決まる物理量」には，例えば「系全体のエネルギー」とか「2原子間の距離」のような，ただ一つの実数値（スカラー）もあるが，実用上もっと重要になるのは「各原子の座標（$ 3N $次元ベクトル）」のような多次元のベクトルになる．つまり確率変数 $A(x)$ は一般に，位相空間上の一つの点 $x$ に対して $N$ 次元のベクトル $\mathbf{a}$ を対応させる写像になる．このような確率変数を $N$ 次元確率変数（確率変数ベクトル）といい， $A = (A_1, A_2 , ..., A_N)^T in \mathbf{R}^N$で表す．確率変数ベクトルについての統計量を整理しておく．

### 期待値（1階テンソル）

まず，確率変数 $A(x)$ がただ一つの実数値を返す場合を考える．確率密度関数 $\rho_H(x)$ のもとで $A(x)$ の期待値（1次モーメント）は

$$
\mathbf{E}_H [A]  = \int_\Gamma dx \ A(x)\rho_H(x)
$$

であった．実験的に決定されるマクロな物理量は，すべて期待値である．特に，ハミルトニアン $H(x)$ の期待値は内部エネルギー $U$ と呼ばれていて

$$
U = \mathbf{E}_H [H] = \int_\Gamma dx \ H(x)\rho_H(x)
$$

である．次に，確率変数ベクトル $A(x)$ の期待値は，各成分の期待値を並べたベクトルである．

$$
\mathbf{E}_H [A] = \mathbf{E}\left[
\begin{pmatrix}
   A_1 \\
   A_2 \\
   \vdots \\
   A_N 
\end{pmatrix}
\right]
\newline = \begin{pmatrix}
   \mathbf{E}[A_1] \\
   \mathbf{E}[A_2] \\
   \vdots \\
   \mathbf{E}[A_N] 
\end{pmatrix}
$$

### 二次モーメント（2階テンソル）

まず，確率変数 $A(x)$ がただ一つの実数値を返す場合を考える．確率密度関数 $\rho_H(x)$ のもとで $A(x)$ の2次モーメントは $A(x)^2$ の期待値のことであり

$$
\mathbf{E}_H [A^2]  = \int_\Gamma dx \ A(x)^2\rho_H(x)
$$

であった．次に，確率変数ベクトル $A(x)$ の2次モーメントは，テンソル積 $A(x)\otimes A(x)$ の期待値のことであり

$$
\begin{align}
\mathbf{E}_H [A\otimes A]  &= \mathbf{E}_H[AA^T]
\newline &= \mathbf{E}_H
\left[
\begin{pmatrix}
   A_1 \\
   A_2 \\
   \vdots \\
   A_N 
\end{pmatrix}
\begin{pmatrix}
   A_1 & A_2 & \dots & A_N 
\end{pmatrix}
\right]
\newline &= \mathbf{E}_H
\left[
\begin{pmatrix}
   A_1 A_1 & A_1 A_2 & \dots & A_1 A_N\\
   A_2 A_1 & A_2 A_2 & \dots & A_2 A_N\\
   \vdots  &         &       &        \\
   A_N A_1 & A_N A_2 & \dots & A_N A_N\\
\end{pmatrix}
\right]
\newline &= 
\begin{pmatrix}
   \mathbf{E}_H[A_1 A_1] & \mathbf{E}_H[A_1 A_2] & \dots & \mathbf{E}_H[A_1 A_N]\\
   \mathbf{E}_H[A_2 A_1] & \mathbf{E}_H[A_2 A_2] & \dots & \mathbf{E}_H[A_2 A_N]\\
   \vdots  &         &       &  \vdots      \\
   \mathbf{E}_H[A_N A_1] & \mathbf{E}_H[A_N A_2] & \dots & \mathbf{E}_H[A_N A_N]\\
\end{pmatrix}
\end{align}
$$

となる．つまり，確率変数ベクトルに対する二次モーメントは行列（分散共分散行列）になる．対角項は通常の意味での分散 $\mathbf{E}_H [A_i^2]$ である．非対角項 $\mathbf{E}_H [A_i A_j]$ は共分散と呼ばれる．

### 分散（二次中心化モーメント）

## キュムラント母関数とその微分係数

確率密度関数 $\rho_H(x)$ と確率変数 $A(x)$ が決まれば，各種の母関数（確率母関数，モーメント母関数，キュムラント母関数，特性関数）が決まるはず．そこで，モーメント母関数とキュムラント母関数を求めてみる．確率変数 $A(x)$ のモーメント母関数 $M_A(t)$ は $e^{tA(x)}$の期待値である．

$$
\begin{eqnarray}
M_A(t) &= \langle e^{tA(x)} \rangle_H
\newline &= \int_\Gamma dx \ e^{tA(x)}\rho_H(x) 
\newline &= \int_\Gamma dx \ e^{tA(x)}\frac{e^{-\beta H(x)}}{Z[H]} 
\newline &= \frac{1}{Z[H]}\int_\Gamma dx \ e^{-\beta\left(H(x) - \displaystyle\frac{t}{\beta}A(x)\right)} 
\newline &= \frac{Z\left[H-\displaystyle\frac{t}{\beta}A\right]}{Z[H]}
\end{eqnarray}
$$

確率変数 $A(x)$ のキュムラント母関数 $K_A(t)$ はモーメント母関数の対数をとったものである．

$$
K_A(t) = \ln M_A(t) = \ln Z\left[H-\frac{t}{\beta}A\right] - \ln Z[H]
$$

上のように，モーメント母関数とキュムラント母関数は分配関数だけで書くことができる．特に $Z\left[H-\frac{t}{\beta}A\right]$ は，物理量 $A$ に共役な外場 $t/\beta$ を摂動として加えた系の分配関数であると解釈できる．

キュムラント母関数の原点における1次および2次微分係数は，1次および2次の中心化モーメント（期待値および分散）を与える．実際に1次モーメントを計算してみると

$$
\begin{align}
\langle A \rangle &= \left.\frac{\partial K_A(t)}{\partial t} \right\vert_{t=0} 
\newline &= \left.\frac{\partial}{\partial t} \ln Z\left[H-\frac{t}{\beta}A\right] \right\vert_{t=0}  
\newline &= \left.\frac{1}{\beta}\frac{\partial}{\partial \lambda} \ln Z\left[H-\lambda A\right] \right\vert_{\lambda=0}  
\end{align}
$$

となり，エネルギーの期待値は分配関数の対数 $\ln Z(\beta)$を使ってシンプルに書けることが分かる．ちなみに，このまま計算を続けていくと

$$
\begin{align}
\newline &= \left.\frac{1}{\beta}\frac{1}{Z[H-\lambda A]}\frac{\partial Z[H-\lambda A]}{\partial \lambda} \right\vert_{\lambda=0}  
\newline &= \left.\frac{1}{\beta}\frac{1}{Z[H-\lambda A]}\frac{\partial}{\partial\lambda}   \int_\Gamma dx\ e^{-\beta (H(x) - \lambda A(x))} \right\vert_{\lambda=0}
\newline &= \left.\frac{1}{\beta}\frac{1}{Z[H-\lambda A]} \int_\Gamma dx\ \beta A(x)e^{-\beta (H(x) - \lambda A(x))} \right\vert_{\lambda=0}
\newline &= \left.\frac{1}{Z[H-\lambda A]}\int_\Gamma dx\ A(x)e^{-\beta (H(x) - \lambda A(x))} \right\vert_{\lambda=0}
\newline &= \frac{1}{Z[H]}\int_\Gamma dx\ A(x)e^{-\beta H(x)} 
\newline &= \langle A \rangle_H
\end{align}
$$

となり，確かに $H(x)$ の期待値になっている．

2次中心化モーメントも対数分配関数の偏微分で書けることがわかる．

$$
\begin{align}
\mathrm{Var}[A] &= \left.\frac{\partial^2 K_A(t)}{\partial t^2} \right\vert_{t=0} 
\newline &= \left.\frac{\partial^2}{\partial t^2} \ln Z\left[H-\frac{t}{\beta}A\right] \right\vert_{t=0}  
\newline &= \left.\frac{1}{\beta^2}\frac{\partial^2}{\partial \lambda^2} \ln Z\left[H-\lambda A\right] \right\vert_{\lambda=0}  
\end{align}
$$

## 摂動を考える

最初からハミルトニアンに対する摂動を考えて，話を逆向きにたどってみる．ハミルトニアンが

$$
H(x) - \lambda_1 A_1(x) - \lambda_2 A_2(x) - ...
$$

で表されるとき，分配関数はもちろん

$$
Z[H - \lambda_1 A_1 - \lambda_2 A_2 - ...]
$$

となり，その対数を $\lambda_i$ で偏微分すると

$$
\begin{align}
\frac{\partial}{\partial \lambda_i} \ln Z[H - \lambda_1 A_1 - \lambda_2 A_2 - ...]
&= \frac{1}{Z[H - \lambda_1 A_1 - \lambda_2 A_2 - ...]}\frac{\partial}{\partial \lambda_i} Z[H - \lambda_1 A_1 - \lambda_2 A_2 - ...]
\newline &= \frac{1}{Z[H - \lambda_1 A_1 - \lambda_2 A_2 - ...]}\frac{\partial}{\partial \lambda_i} \int_\Gamma dx \ e^{-\beta (H(x) - \lambda_1 A_1(x) - ...)}
\newline &= \frac{1}{Z[H - \lambda_1 A_1 - \lambda_2 A_2 - ...]}\int_\Gamma dx \ \beta A_i(x)e^{-\beta (H(x) - \lambda_1 A_1(x) - ...)}
\newline &= \beta\langle A_i\rangle_{H + \lambda_1 A_1 + ...}
\end{align}
$$

もう一回 $\lambda_j$ で偏微分すると

$$
\begin{align}
&\frac{\partial}{\partial \lambda_j}  \frac{1}{Z[H - \lambda_1 A_1 - \lambda_2 A_2 - ...]}\int_\Gamma dx \ \beta A_i(x)e^{-\beta (H(x) - \lambda_1 A_1(x) - ...)}
\newline &= \left( \frac{\partial}{\partial \lambda_j} \frac{1}{Z[H - \lambda_1 A_1 - \lambda_2 A_2 - ...]} \right) \int_\Gamma dx \ \beta A_i(x)e^{-\beta (H(x) - \lambda_1 A_1(x) - ...)}
\newline &\qquad +
\frac{1}{Z[H - \lambda_1 A_1 - \lambda_2 A_2 - ...]}\left( \frac{\partial}{\partial \lambda_j} \int_\Gamma dx \ \beta A_i(x)e^{-\beta (H(x) - \lambda_1 A_1(x) - ...)} \right)
\newline &= \frac{1}{Z[H - \lambda_1 A_1 - \lambda_2 A_2 - ...]^2} \frac{-\partial Z[H - \lambda_1 A_1 - ...]}{\partial \lambda_j} \int_\Gamma dx \ \beta A_i(x)e^{-\beta (H(x) - \lambda_1 A_1(x) - ...)}
\newline &\qquad +
\frac{1}{Z[H - \lambda_1 A_1 - \lambda_2 A_2 - ...]} \int_\Gamma dx \ \beta^2 A_i(x)A_j(x)e^{-\beta (H(x) - \lambda_1 A_1(x) - ...)}
\newline &= -\frac{1}{Z[H - \lambda_1 A_1 - \lambda_2 A_2 - ...]^2} \int_\Gamma dx \ \beta A_j(x)e^{-\beta (H(x) - \lambda_1 A_1(x) - ...)} \int_\Gamma dx \ \beta A_i(x)e^{-\beta (H(x) - \lambda_1 A_1(x) - ...)}
\newline &\qquad +
\frac{1}{Z[H - \lambda_1 A_1 - \lambda_2 A_2 - ...]} \int_\Gamma dx \ \beta^2 A_i(x)A_j(x)e^{-\beta (H(x) - \lambda_1 A_1(x) - ...)}
\newline &= -\beta^2 \langle A_i \rangle \langle A_j \rangle + \beta^2\langle A_i A_j \rangle
\newline &= \beta^2 \left(\langle A_i A_j \rangle - \langle A_i \rangle \langle A_j \rangle\right)
\newline &= \beta^2 \langle (A_i-\langle A_i \rangle) (A_j-\langle A_j \rangle) \rangle
\newline &= \beta^2 \mathrm{Cov}[A_i,A_j]
\end{align}
$$

ただし $\langle \ \rangle$ および $\mathrm{Cov}$ の添字 $H-\lambda_1 A_1 - ...$を省略した．

## ヘルムホルツ自由エネルギーとの関係

分配関数 $Z(\beta)$ の対数 $\ln Z(\beta)$ は，ヘルムホルツ自由エネルギー $F$ と次のような関係にある．

$$
F[H] = -\frac{1}{\beta} \ln Z[H]
$$

しかし，なんでそうなるのかはこの時点では説明できない．ちなみに， $\ln Z(\beta)$ にはマシュー関数という名前がついているらしい．先に確認した摂動と期待値・分散の関係を使うと

$$
\begin{align}
\frac{\partial F}{\partial \lambda_i} = -\langle A_i \rangle
\newline
\frac{\partial^2 F}{\partial \lambda_i\partial \lambda_j} = \beta\mathrm{Cov}[A_i, A_j]
\end{align}
$$

なので，摂動1と摂動2による自由エネルギーの変化を二次まで近似すると

$$
\begin{align}
\Delta F &\simeq \frac{\partial F}{\partial \lambda_1}\Delta \lambda_1 + \frac{\partial F}{\partial \lambda_2}\Delta \lambda_2 + \frac{1}{2}\left[ \frac{\partial^2 F}{\partial \lambda_1^2} (\Delta \lambda_1)^2 + 2\frac{\partial^2 F}{\partial \lambda_1 \partial \lambda_2} (\Delta \lambda_1)(\Delta \lambda_2) + \frac{\partial^2 F}{\partial \lambda_2^2} (\Delta \lambda_2)^2 \right]
\newline &= \langle A_1 \rangle\Delta \lambda_1 + \langle A_2 \rangle\Delta \lambda_2 + \frac{1}{2}\left[ \mathrm{Var}[A_1](\Delta \lambda_1)^2 + 2\mathrm{Cov}[A_1,A_2](\Delta \lambda_1)(\Delta \lambda_2) + \mathrm{Var}[A_2](\Delta \lambda_2)^2 \right]
\end{align}
$$

## [揺動散逸定理](fdt)


