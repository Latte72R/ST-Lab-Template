#import "../template.typ": report

#show: doc => report.with(
  exp_y: 2200,
  exp_m: 10,
  exp_d: 30,
  subject: [グラフィカル・データ解析],
  submit: (1877, 11, 5, 21, 15),
)(doc)

= 目的

公開用に本文を削除．

= 実験結果・考察

公開用に本文を削除．

== 課題1

#figure(
  image("../assets/sample.png", width: 100%),
  caption: [元データと対数変換後データのヒストグラム],
)

#figure(
  image("../assets/sample.png", width: 100%),
  caption: [元データと対数変換後データの歪度],
  supplement: [表],
  kind: table,
)

#figure(
  image("../assets/sample.png", width: 100%),
  caption: [元データと対数変換後データの散布図],
)
== 課題2

#figure(
  image("../assets/sample.png", width: 90%),
  caption: [ボックスコックス変換のヒストグラム],
)

#figure(
  image("../assets/sample.png", width: 90%),
  caption: [ボックスコックス変換のヒストグラム],
)
== 課題3

#figure(
  image("../assets/sample.png", width: 100%),
  caption: [相関係数の変化による散布図の比較],
)
== 課題4

#figure(
  image("../assets/sample.png", width: 80%),
  caption: [相関係数の推定],
  supplement: [表],
  kind: table,
)

#figure(
  image("../assets/sample.png", width: 100%),
  caption: [真の相関係数と推定値の散布図],
)
== 課題5

#figure(
  image("../assets/sample.png", width: 100%),
  caption: [パターン(1, 1, 1, 1, 1, 1)の判別結果],
  supplement: [表],
  kind: table,
)
#figure(
  image("../assets/sample.png", width: 60%),
  caption: [パターン(1, 1, 1, 1, 1, 1)でのずれの大きさと誤判別率],
  supplement: [表],
  kind: table,
)
#figure(
  image("../assets/sample.png", width: 50%),
  caption: [パターン(1, 1, 1, 1, 1, 1)でのずれの大きさと誤判別率],
)

#figure(
  image("../assets/sample.png", width: 100%),
  caption: [パターン(1, 1, 0, 1, 1, 0)の判別結果],
  supplement: [表],
  kind: table,
)
#figure(
  image("../assets/sample.png", width: 60%),
  caption: [パターン(1, 1, 0, 1, 1, 0)でのずれの大きさと誤判別率],
  supplement: [表],
  kind: table,
)
#figure(
  image("../assets/sample.png", width: 50%),
  caption: [パターン(1, 1, 0, 1, 1, 0)でのずれの大きさと誤判別率],
)

#figure(
  image("../assets/sample.png", width: 100%),
  caption: [パターン(1, 0, 0, 1, 0, 0)の判別結果],
  supplement: [表],
  kind: table,
)
#figure(
  image("../assets/sample.png", width: 60%),
  caption: [パターン(1, 0, 0, 1, 0, 0)でのずれの大きさと誤判別率],
  supplement: [表],
  kind: table,
)
#figure(
  image("../assets/sample.png", width: 50%),
  caption: [パターン(1, 0, 0, 1, 0, 0)でのずれの大きさと誤判別率],
)

#figure(
  image("../assets/sample.png", width: 100%),
  caption: [パターン(1, 1, -1, 1, 1, -1)の判別結果],
  supplement: [表],
  kind: table,
)
#figure(
  image("../assets/sample.png", width: 60%),
  caption: [パターン(1, 1, -1, 1, 1, -1)でのずれの大きさと誤判別率],
  supplement: [表],
  kind: table,
)
#figure(
  image("../assets/sample.png", width: 50%),
  caption: [パターン(1, 1, -1, 1, 1, -1)でのずれの大きさと誤判別率],
)

#figure(
  image("../assets/sample.png", width: 100%),
  caption: [パターン(1, -1, 1, -1, 1, -1)の判別結果],
  supplement: [表],
  kind: table,
)
#figure(
  image("../assets/sample.png", width: 60%),
  caption: [パターン(1, -1, 1, -1, 1, -1)でのずれの大きさと誤判別率],
  supplement: [表],
  kind: table,
)
#figure(
  image("../assets/sample.png", width: 50%),
  caption: [パターン(1, -1, 1, -1, 1, -1)でのずれの大きさと誤判別率],
)
