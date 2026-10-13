// 一部の情報を伏せた実験レポートの記入例です。
#import "../template.typ": report, image-placeholder

#show: doc => report.with(
  exp_y: 2026,
  exp_m: 4,
  exp_d: 3,
  subject: [偏光],
  submit: (2026, 4, 10, 12, 0),
  temp: [25 °C],
  humid: [50 %],
  pressure: [1013 hPa],
)(doc)

= 目的

偏光の原理を理解し,また偏光の測定を通して,偏光が原理どおりに起こっていることを確認する.

= 実験原理

実験で用いる基本式を示します．

== 偏光板

偏光板とは，ポラロイド板に代表される直線偏光を取り出すための装置である．

== $lambda$ / 4 板

$lambda$ / 4 板は，光の位相を 90 度ずらすための装置である．

= 実験方法

実験は，偏光板と $lambda$ / 4 板を用いて行った．

= 実験結果

== 実験１

$theta$ が −100° ∼ 100° の範囲で偏光板を 10° ごとに回転させ，電流 $I$ を測定した．

#figure(
  image-placeholder(width: 80%),
  caption: [I と $theta$ のグラフ],
) <fig:g1-1>

#figure(
  image-placeholder(width: 80%),
  caption: [I と $cos^2 theta$ のグラフ],
) <fig:g1-2>

== 実験２

$theta = 0degree$ と $theta = 90degree$ の 2 通りについて，$phi$ を −10° ∼ 190° の範囲で 10° ごとに変化させ，電流 $I$ を測定した．

#figure(
  image-placeholder(width: 80%),
  caption: [I と $phi$ のグラフ],
) <fig:g2-1>

$
  delta = 2 arcsin sqrt(1 - (I_"min") / (I_"max"))
$

== 実験３

$phi$ = 0°, 15°, 30°, 45° のときについて,それぞれ $theta$ が 0° ∼ 350° の範囲で偏光板を回転させ, 10° ごとに電流を測定した.

#figure(
  image-placeholder(width: 50%),
  caption: [$sqrt(I)$ と $theta$ のグラフ ($phi = 0degree$)],
) <fig:g3-1>

#figure(
  image-placeholder(width: 50%),
  caption: [$sqrt(I)$ と $theta$ のグラフ ($phi = 15degree$)],
) <fig:g3-2>

#figure(
  image-placeholder(width: 50%),
  caption: [$sqrt(I)$ と $theta$ のグラフ ($phi = 30degree$)],
) <fig:g3-3>

#figure(
  image-placeholder(width: 50%),
  caption: [$sqrt(I)$ と $theta$ のグラフ ($phi = 45degree$)],
) <fig:g3-4>

#figure(
  image-placeholder(width: 50%),
  caption: [$phi$ = 0°, 15°, 30°, 45° の偏光の形をまとめたグラフ],
) <fig:g3-5>

// Typst：複数行の式は & で位置をそろえ，\ で改行する。
$
  a' & = E_0 cos phi \
  b' & = E_0 sin phi
$

= 考察

$ I = P_0 cos^2 theta $

$ P_"pol" = (I_"max" - I_"min") / (I_"max" + I_"min") $

== 実験１

@fig:g1-1 の $I$–$theta$ グラフは，$theta$ に対してほぼ 180° 周期の変化を示し，$theta = 0degree$ 付近で最大，$theta = 90degree$ 付近でほぼ 0 となる形になった．

== 実験２

測定結果と考察を記入します．

== 実験３

測定結果と考察を記入します．

#set math.equation(numbering: numbering.with("(1.1)"), supplement: "式")

// Typst：複数行の式は & で位置をそろえ，\ で改行する。
$
  I(0degree)/ P_0 & = (a / E_0)^2 cos^2 phi + (b / E_0)^2 sin^2 phi
$<equate0>

// Typst：複数行の式は & で位置をそろえ，\ で改行する。
$
  I(90degree)/ P_0 & = (a / E_0)^2 sin^2 phi + (b / E_0)^2 cos^2 phi
$<equate90>

#figure(
  table(
    columns: 4,
    [$phi$], [$theta = 0degree$での$I$ / $P_0$], [@equate0 により導いた比率], [誤差率],

    [0°], [0], [0], [0],
    [30°], [0], [0], [0],
    [45°], [0], [0], [0],
  ),
  caption: [@fig:g2-1 の$theta = 0degree$と実験３の偏光楕円の対応表],
) <tab:exp2-1>

#figure(
  table(
    columns: 4,
    [$phi$], [$theta = 90degree$での$I$ / $P_0$], [@equate90 により導いた比率], [誤差率],

    [0°], [0], [0], [0],
    [30°], [0], [0], [0],
    [45°], [0], [0], [0],
  ),
  caption: [@fig:g2-1 の$theta = 90degree$と実験３の偏光楕円の対応表],
) <tab:exp2-2>

= 結論

実験結果に基づく結論を記入します．
