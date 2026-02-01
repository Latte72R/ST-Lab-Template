#import "../template.typ": report
#import "@preview/physica:0.9.7": *

#show: doc => report.with(
  exp_y: 1853,
  exp_m: 12,
  exp_d: 15,
  subject: [ニューラルネットワーク],
  submit: (1997, 12, 25, 17, 39),
  temp: [21.355 °C],
  humid: [27 %],
  pressure: [1057 hPa],
)(doc)

#set math.equation(numbering: numbering.with("(1.1)"), supplement: "式")

= 目的

公開用に本文を削除．

= 実験原理

公開用に本文を削除．

== 線形ユニット

$
  hat(y)_k = sum_(i=1)^M w^k_i x_i + b^k
  quad (k = 1, 2, ..., K)
$
$
  hat(y) = (hat(y)_1, ..., hat(y)_K)^T
$
$
  W = mat(
    w^1_1, ..., w^1_M;
    w^2_1, ..., w^2_M;
    ..., ..., ...;
    w^K_1, ..., w^K_M
  )
$
$
  b = (b^1, b^2, ..., b^K)^T
$
$
  hat(y) = W x + b
$
== 損失関数

$
  E(w, b) = 1/N sum_(n=1)^N (hat(y)_n - y_n)^2
$
== 勾配降下法

$
  w arrow.l w - eta (partial E(w, b)) / (partial w) \
  b arrow.l b - eta (partial E(w, b)) / (partial b)
$
= 実験方法

公開用に本文を削除．

= 実験結果

公開用に本文を削除．

== 実習3のネットワークについて

#figure(
  image("../assets/sample.png", width: 60%),
  caption: [損失関数の値の変化],
) <fig:loss_graph>

#figure(
  image("../assets/sample.png", width: 60%),
  caption: [精度の値の変化],
) <fig:accuracy_graph>
== 手描き文字について

#figure(
  image("../assets/sample.png", width: 30%),
  caption: [正解ラベルが 7 で予測ラベルも 7 の画像],
) <fig:l7_ok>

#figure(
  image("../assets/sample.png", width: 30%),
  caption: [正解ラベルが 7 で予測ラベルが 2 の画像],
) <fig:l7_fail>

#figure(
  image("../assets/sample.png", width: 30%),
  caption: [正解ラベルが 9 で予測ラベルも 9 の画像],
) <fig:l9_ok>

#figure(
  image("../assets/sample.png", width: 30%),
  caption: [正解ラベルが 9 で予測ラベルが 4 の画像],
) <fig:l9_fail>
== ハイパーパラメータの違いについて

公開用に本文を削除．

=== 中間層の層数の違い

#figure(
  image("../assets/sample.png", width: 60%),
  caption: [損失関数の値の変化],
) <fig:loss_graph_128128>

#figure(
  image("../assets/sample.png", width: 60%),
  caption: [精度の値の変化],
) <fig:accuracy_graph_128128>

#figure(
  image("../assets/sample.png", width: 60%),
  caption: [損失関数の値の変化],
) <fig:loss_graph_1283>

#figure(
  image("../assets/sample.png", width: 60%),
  caption: [精度の値の変化],
) <fig:accuracy_graph_1283>

#figure(
  image("../assets/sample.png", width: 70%),
  caption: [#text(red)[層数ごとの損失の値の変化]],
) <fig:layer_loss_comparison>

#figure(
  image("../assets/sample.png", width: 70%),
  caption: [#text(red)[層数ごとの精度の値の変化]],
) <fig:layer_accuracy_comparison>
=== 中間層のユニット数の違い

#figure(
  image("../assets/sample.png", width: 60%),
  caption: [損失関数の値の変化],
) <fig:loss_graph_256>

#figure(
  image("../assets/sample.png", width: 60%),
  caption: [精度の値の変化],
) <fig:accuracy_graph_256>

#figure(
  image("../assets/sample.png", width: 60%),
  caption: [損失関数の値の変化],
) <fig:loss_graph_512>

#figure(
  image("../assets/sample.png", width: 60%),
  caption: [精度の値の変化],
) <fig:accuracy_graph_512>

#figure(
  image("../assets/sample.png", width: 70%),
  caption: [#text(red)[ユニット数ごとの損失の値の変化]],
) <fig:unit_loss_comparison>

#figure(
  image("../assets/sample.png", width: 70%),
  caption: [#text(red)[ユニット数ごとの精度の値の変化]],
) <fig:unit_accuracy_comparison>
= 考察

公開用に本文を削除．

== #text(red)[必修課題１]

公開用に本文を削除．

== #text(red)[必修課題２]

公開用に本文を削除．

== #text(red)[必修課題３]

公開用に本文を削除．

=== 中間層の層数の違い

公開用に本文を削除．

=== 中間層のユニット数の違い

公開用に本文を削除．

= 結論

本実験では，MNIST を題材にニューラルネットワークの構造・学習・評価方法を確認し，訓練データに対する学習の様子とハイパーパラメータの影響を観察した．
単純に中間層の層数やユニット数を増やすだけでは，必ずしも性能が向上するわけではないことが分かった．
したがって，モデルの深さや幅だけでなく，学習率やエポック数なども含めてバランス良く設計することが重要である．
