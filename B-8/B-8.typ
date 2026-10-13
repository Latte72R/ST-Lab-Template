// 一部の情報を伏せた実験レポートの記入例である．
#import "../template.typ": report, image-placeholder

#show: doc => report.with(
  exp_y: 2026,
  exp_m: 4,
  exp_d: 3,
  subject: [ニューラルネットワーク],
  submit: (2026, 4, 10, 12, 0),
  temp: [25 °C],
  humid: [50 %],
  pressure: [1013 hPa],
)(doc)

#set math.equation(numbering: numbering.with("(1.1)"), supplement: "式")

= 目的

ニューラルネットワークの基盤的理論及び実装，ニューラルネットワークの訓練方法，評価方法などに関する基礎的知識を習得する．

= 実験原理

実験で用いる基本式を示す．

== 線形ユニット

ニューラルネットワークの最小単位は線形ユニットである．

// Typst：mat(...) は行列。列はカンマ，行はセミコロンで区切る。
$
  W = mat(
    w^1_1, ..., w^1_M;
    w^2_1, ..., w^2_M;
    ..., ..., ...;
    w^K_1, ..., w^K_M
  )
$

$
  hat(y) = W x + b
$

== 損失関数

ニューラルネットワークの出力 $hat(y)$ と正解ラベル $y$ の間の誤差を表す関数を損失関数と呼ぶ．

$
  E(w, b) = 1/N sum_(n=1)^N (hat(y)_n - y_n)^2
$

== 勾配降下法

損失関数を最小化するために，勾配降下法が用いられる．

$
  w arrow.l w - eta (partial E(w, b)) / (partial w) \
  b arrow.l b - eta (partial E(w, b)) / (partial b)
$

= 実験方法

実習3では，まず128ユニットの中間層1層を持つニューラルネットワークを用いて，手描き文字データセットMNISTの分類を行った．

= 実験結果

== 実習3のネットワークについて

訓練集合に対する損失関数とテスト集合に対する損失関数の値の変化を折れ線グラフでプロットしたものを@fig:loss_graph に示す．

#figure(
  image-placeholder(width: 60%),
  caption: [損失関数の値の変化],
) <fig:loss_graph>

#figure(
  image-placeholder(width: 60%),
  caption: [精度の値の変化],
) <fig:accuracy_graph>

== 手描き文字について

分類が成功した画像と失敗した画像を示し，特徴を記入する．

#figure(
  image-placeholder(width: 30%),
  caption: [正解ラベルが 7 で予測ラベルも 7 の画像],
) <fig:l7_ok>

#figure(
  image-placeholder(width: 30%),
  caption: [正解ラベルが 7 で予測ラベルが 2 の画像],
) <fig:l7_fail>

#figure(
  image-placeholder(width: 30%),
  caption: [正解ラベルが 9 で予測ラベルも 9 の画像],
) <fig:l9_ok>

#figure(
  image-placeholder(width: 30%),
  caption: [正解ラベルが 9 で予測ラベルが 4 の画像],
) <fig:l9_fail>

== ハイパーパラメータの違いについて

=== 中間層の層数の違い

まず，128ユニットの中間層2層を持つニューラルネットワークを用いて学習を行った結果を示す．

#figure(
  image-placeholder(width: 60%),
  caption: [損失関数の値の変化],
) <fig:loss_graph_128128>

#figure(
  image-placeholder(width: 60%),
  caption: [精度の値の変化],
) <fig:accuracy_graph_128128>

#figure(
  image-placeholder(width: 60%),
  caption: [損失関数の値の変化],
) <fig:loss_graph_1283>

#figure(
  image-placeholder(width: 60%),
  caption: [精度の値の変化],
) <fig:accuracy_graph_1283>

#figure(
  image-placeholder(width: 70%),
  caption: [#text(red)[層数ごとの損失の値の変化]],
) <fig:layer_loss_comparison>

#figure(
  image-placeholder(width: 70%),
  caption: [#text(red)[層数ごとの精度の値の変化]],
) <fig:layer_accuracy_comparison>

=== 中間層のユニット数の違い

次に，256ユニットの中間層1層を持つニューラルネットワークを用いて学習を行った結果を示す．

#figure(
  image-placeholder(width: 60%),
  caption: [損失関数の値の変化],
) <fig:loss_graph_256>

#figure(
  image-placeholder(width: 60%),
  caption: [精度の値の変化],
) <fig:accuracy_graph_256>

#figure(
  image-placeholder(width: 60%),
  caption: [損失関数の値の変化],
) <fig:loss_graph_512>

#figure(
  image-placeholder(width: 60%),
  caption: [精度の値の変化],
) <fig:accuracy_graph_512>

#figure(
  image-placeholder(width: 70%),
  caption: [#text(red)[ユニット数ごとの損失の値の変化]],
) <fig:unit_loss_comparison>

#figure(
  image-placeholder(width: 70%),
  caption: [#text(red)[ユニット数ごとの精度の値の変化]],
) <fig:unit_accuracy_comparison>

= 考察

== #text(red)[必修課題１]

測定結果と考察を記入する．

== #text(red)[必修課題２]

測定結果と考察を記入する．

== #text(red)[必修課題３]

=== 中間層の層数の違い

測定結果と考察を記入する．

=== 中間層のユニット数の違い

測定結果と考察を記入する．

= 結論

実験結果に基づく結論を記入する．
