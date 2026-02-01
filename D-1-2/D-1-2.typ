#import "../template.typ": report

#show: doc => report.with(
  exp_y: 1875,
  exp_m: 11,
  exp_d: 19,
  subject: [
    D-1「表示系におけるヒューマンファクターズ」#linebreak()
    D-1-2 VDT 作業における人間の操作特性に関する実験
  ],
  submit: (2046, 11, 25, 19, 2),
)(doc)

= 目的

公開用に本文を削除．

= 実験 B-1

公開用に本文を削除．

== 実験 B-1-1

公開用に本文を削除．

=== 実験方法

公開用に本文を削除．

=== 実験結果及び考察

#figure(
  image("../assets/sample.png"),
  caption: [ターゲットのサイズとずれの距離の平均],
) <fig:b1-size-error>

#figure(
  image("../assets/sample.png"),
  caption: [ターゲットのサイズと所要時間の平均],
) <fig:b1-size-time>
== 実験 B-1-2

公開用に本文を削除．

=== 実験方法

#figure(
  image("../assets/sample.png"),
  caption: [
    純色の誘目性尺度値 (背景別) \
    神作博. "画面構成法による環境内の色彩の誘目性に関する研究", 日本眼科学会, 1987, p.72. より引用, 図は新規に作成した@kamisaku1987 ．
  ],
) <fig:kamisaku-scale>

#figure(
  image("../assets/sample.png", width: 50%),
  caption: [青色ターゲット],
) <fig:blue-target>

#figure(
  image("../assets/sample.png", width: 50%),
  caption: [赤色ターゲット],
) <fig:red-target>

#figure(
  image("../assets/sample.png", width: 50%),
  caption: [黄色ターゲット],
) <fig:yellow-target>
=== 実験結果及び考察

#figure(
  image("../assets/sample.png"),
  caption: [ターゲットの色とずれの距離の平均],
) <fig:b1-color-error>

#figure(
  image("../assets/sample.png"),
  caption: [ターゲットの色と所要時間の平均],
) <fig:b1-color-time>
= 実験 B-2

公開用に本文を削除．

== 実験 B-2-1

公開用に本文を削除．

=== 実験方法

公開用に本文を削除．

=== 実験結果及び考察

#figure(
  image("../assets/sample.png"),
  caption: [キー配置と入力の正答率],
) <fig:b2-base-accuracy>

#figure(
  image("../assets/sample.png"),
  caption: [キー配置と入力時間の平均],
) <fig:b2-base-time>
== 実験 B-2-2

公開用に本文を削除．

=== 実験方法

#figure(
  image("../assets/sample.png", width: 100%),
  caption: [マウス用ターゲット],
) <fig:mouse-target>

#figure(
  image("../assets/sample.png", width: 100%),
  caption: [タッチ用ターゲット],
) <fig:touch-target>
=== 実験結果及び考察

#figure(
  image("../assets/sample.png"),
  caption: [キー配置と入力の正答率],
) <fig:b2-custom-accuracy>

#figure(
  image("../assets/sample.png"),
  caption: [キー配置と入力時間の平均],
) <fig:b2-custom-time>
= 結論

まずB-1では，サイズ拡大は一貫して時間短縮をもたらす一方で，中心からのずれは増える，という速度と精度のトレードオフが確認できた．

次に，B-1-2 では，視認性が律速段階になり，黄（高輝度・高コントラスト）が最速で安定して生出が出るのに対して，青が最遅・不安定であるという順序が出た．

B-2では，配置だけではなく慣れの影響も大きいことが確認できた．

#bibliography("refs.bib")
