// 一部の情報を伏せた実験レポートの記入例です。
#import "../template.typ": report, image-placeholder

#show: doc => report.with(
  exp_y: 2026,
  exp_m: 4,
  exp_d: 3,
  subject: [
    D-1「表示系におけるヒューマンファクターズ」#linebreak()
    D-1-2 VDT 作業における人間の操作特性に関する実験
  ],
  submit: (2026, 4, 10, 12, 0),
)(doc)

= 目的

VDT（Visual Display Terminal）作業における人間の知覚・判断・行動の特性を，実験データをもとに人間工学的観点から検討する．

= 実験 B-1

== 実験 B-1-1

=== 実験方法

ターゲットデザインの形状を中塗り丸，色を赤，背景色を黒に固定し，サイズを 5mm, 15mm, 30mm の 3 種類に変化させた．

=== 実験結果及び考察

測定結果と考察を記入します．

$ "MT" = a + b log_2(2 A/W) $

#figure(
  image-placeholder(width: 80%),
  caption: [ターゲットのサイズとずれの距離の平均],
) <fig:b1-size-error>

#figure(
  image-placeholder(width: 80%),
  caption: [ターゲットのサイズと所要時間の平均],
) <fig:b1-size-time>

== 実験 B-1-2

=== 実験方法

ターゲットデザインの形状をバツ，背景色を黒，サイズを 5mm に固定し，ターゲットの色を青，赤，黄の 3 種類に変化させた．

#figure(
  image-placeholder(width: 80%),
  caption: [純色の誘目性尺度値（背景別）の記入用図 @kamisaku1987],
) <fig:kamisaku-scale>

#figure(
  image-placeholder(width: 50%),
  caption: [青色ターゲット],
) <fig:blue-target>

#figure(
  image-placeholder(width: 50%),
  caption: [赤色ターゲット],
) <fig:red-target>

#figure(
  image-placeholder(width: 50%),
  caption: [黄色ターゲット],
) <fig:yellow-target>

=== 実験結果及び考察

測定結果と考察を記入します．

#figure(
  image-placeholder(width: 80%),
  caption: [ターゲットの色とずれの距離の平均],
) <fig:b1-color-error>

#figure(
  image-placeholder(width: 80%),
  caption: [ターゲットの色と所要時間の平均],
) <fig:b1-color-time>

= 実験 B-2

== 実験 B-2-1

=== 実験方法

2 種類の入力方法（マウス，タッチ）で，4 種類のキー配置（テンキー型，縦型，横型，時計型）それぞれの条件で数値を入力する実験を行った．

=== 実験結果及び考察

測定結果と考察を記入します．

#figure(
  image-placeholder(width: 80%),
  caption: [キー配置と入力の正答率],
) <fig:b2-base-accuracy>

#figure(
  image-placeholder(width: 80%),
  caption: [キー配置と入力時間の平均],
) <fig:b2-base-time>

== 実験 B-2-2

=== 実験方法

マウスとタッチそれぞれについて入力精度及び反応時間を考慮して，最適と思われるキー配置を作成した．

#figure(
  image-placeholder(width: 100%),
  caption: [マウス用ターゲット],
) <fig:mouse-target>

#figure(
  image-placeholder(width: 100%),
  caption: [タッチ用ターゲット],
) <fig:touch-target>

=== 実験結果及び考察

測定結果と考察を記入します．

#figure(
  image-placeholder(width: 80%),
  caption: [キー配置と入力の正答率],
) <fig:b2-custom-accuracy>

#figure(
  image-placeholder(width: 80%),
  caption: [キー配置と入力時間の平均],
) <fig:b2-custom-time>

= 結論

実験結果に基づく結論を記入します．

#bibliography("refs.bib")
