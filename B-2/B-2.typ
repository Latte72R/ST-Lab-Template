#import "../template.typ": report

#show: doc => report.with(
  exp_y: 2084,
  exp_m: 11,
  exp_d: 23,
  subject: [偏光],
  submit: (2129, 12, 6, 20, 48),
  temp: [22.206 °C],
  humid: [34 %],
  pressure: [986 hPa],
)(doc)

#set math.equation(numbering: "1.")

= 目的

公開用に本文を削除．

= 実験原理

公開用に本文を削除．

== 偏光板

公開用に本文を削除．

== $lambda$ / 4 板

公開用に本文を削除．

= 実験方法

公開用に本文を削除．

= 実験結果

公開用に本文を削除．

== 実験１

#figure(
  image("../assets/sample.png"),
  caption: [I と $theta$ のグラフ],
) <fig:g1-1>

#figure(
  image("../assets/sample.png"),
  caption: [I と $cos^2 theta$ のグラフ],
) <fig:g1-2>
== 実験２

#figure(
  image("../assets/sample.png"),
  caption: [I と $phi$ のグラフ],
) <fig:g2-1>
$
  (I_"min") / (I_"max") = 1 - sin^2 delta / 2
$
$
  delta = 2 arcsin sqrt(1 - (I_"min") / (I_"max"))
$
== 実験３

#figure(
  image("../assets/sample.png", width: 50%),
  caption: [$sqrt(I)$ と $theta$ のグラフ ($phi = 0degree$)],
) <fig:g3-1>

#figure(
  image("../assets/sample.png", width: 50%),
  caption: [$sqrt(I)$ と $theta$ のグラフ ($phi = 15degree$)],
) <fig:g3-2>

#figure(
  image("../assets/sample.png", width: 50%),
  caption: [$sqrt(I)$ と $theta$ のグラフ ($phi = 30degree$)],
) <fig:g3-3>

#figure(
  image("../assets/sample.png", width: 50%),
  caption: [$sqrt(I)$ と $theta$ のグラフ ($phi = 45degree$)],
) <fig:g3-4>

#figure(
  image("../assets/sample.png", width: 50%),
  caption: [$phi$ = 0°, 15°, 30°, 45° の偏光の形をまとめたグラフ],
) <fig:g3-5>
$
  a' & = E_0 cos 15degree = 15.6 \
  b' & = E_0 sin 15degree = 4.2
$
$
  a' & = E_0 cos 30degree = 13.9 \
  b' & = E_0 sin 30degree = 8.0
$
$
  a' & = E_0 cos 30degree = 11.4 \
  b' & = E_0 sin 30degree = 11.4
$
= 考察

公開用に本文を削除．

== 実験１

$P_0 = (I_"max" - I_"min") / (I_"max" + I_"min")$
== 実験２

公開用に本文を削除．

== 実験３

$phi = 45degree$ で $b/a approx 1$

$
  I(0degree)/ P_0 & = (a / E_0)^2 cos^2 phi + (b / E_0)^2 sin^2 phi
$<equate0>

#figure(
  table(
    columns: 4,
    [$phi$], [ ], [ ], [ ],

    [0°], [ ], [ ], [ ],
    [30°], [ ], [ ], [ ],
    [45°], [ ], [ ], [ ],
  ),
  caption: [@fig:g2-1 の$theta = 0degree$と実験３の偏光楕円の対応表],
) <tab:exp2-1>

= 結論

本実験では，偏光板と $lambda / 4$ 板を用いて偏光状態を測定し，偏光に関する基本的な理論と実験結果の対応を確認した．
