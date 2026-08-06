#import "template.typ": *
#show: jarticle

#set math.mat(
  delim: ("[","]")
)
#show math.equation.where(block: false): it => {
  h(0.1em) + it + h(0.1em)
}

#let evaluated(expr, size: 100%) = $lr(#expr|, size: #size)$

apo構造に対応する準安定状態からリガンド結合後の構造変化を考える．
リガンド，タンパク質，溶媒を含む系について，リガンド--タンパク質
相互作用エネルギーを $V$ とし，

$
H_lambda = H_0 + lambda V
$

とする．ここで，$H_0$ はリガンド--タンパク質相互作用以外の
Hamiltonianを表し，$lambda = 0$ は非相互作用状態，
$lambda = 1$ は通常のリガンド結合状態に対応する．

$lambda = 1$ であっても，有限時間のMDでは自由エネルギー障壁を越える構造変化がレアイベントであるため，holo系の大域平衡分布をサンプリングできず，closed-holoの準安定部分状態内の局所平衡分布しか得られないことがある．

タンパク質構造を表す観測量を $A$，それに共役な一般化力を $g$ とし，

$
H_(lambda, g) = H_0 + lambda V - g A
$

とする．このとき，

$
(partial ln Z(lambda, g))/(partial g)
= beta chevron.l A chevron.r_(lambda, g)
$

であり，

$
(partial^2 ln Z(lambda, g))/(partial lambda partial g)
= - beta^2 "Cov"_(lambda, g)[A, V]
$

である．したがって，

$
(partial chevron.l A chevron.r_lambda)/(partial lambda)
= - beta "Cov"_lambda[A, V]
$

となる．

$lambda = 0$ で評価した応答は，apo状態からリガンド相互作用を加えたときの一次応答を表す．一方，$lambda = 1$で評価した応答は，リガンド相互作用をさらに微小に強めたときの局所的な接線応答を表す．

$A = bold(r)$ とし，リガンドがタンパク質に及ぼす力を

$
bold(G) = - nabla_(bold(r)) V
$

とすると，準調和近似のもとで，

$
- beta "Cov"[bold(r), V]
approx beta bold(C) chevron.l bold(G) chevron.r
$

となる．LRPF法では，この局所的な予測変位

$
Delta bold(r)_"LR"
= beta bold(C) chevron.l bold(G) chevron.r
$

に比例するバイアス力を加え，構造を隣接する準安定部分状態へ移動させる．その後バイアスを除いて緩和し，新しい部分状態で$bold(C)$ と $chevron.l bold(G) chevron.r$ を再評価する．この反復により，大域的には非線形な構造変化経路を局所的な線形応答の系列として追跡する．