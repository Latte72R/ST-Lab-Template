
#import "../template.typ": report

#show: doc => report.with(
  exp_y: 2207,
  exp_m: 10,
  exp_d: 31,
  subject: [
    D-1「表示系におけるヒューマンファクターズ」#linebreak()
    D-1-1 VDT作業における人間の視覚特性に関する実験],
  submit: (1961, 11, 6, 19, 2),
)(doc)

= 目的

公開用に本文を削除．

= 実験A-1

公開用に本文を削除．

== 実験方法

公開用に本文を削除．

== 実験結果及び考察

#figure(
  image("../assets/sample.png", width: 70%),
  caption: [計器の形状と読み取り誤差のグラフ],
)

#figure(
  image("../assets/sample.png", width: 70%),
  caption: [計器の形状と正答率のグラフ],
)
= 実験A-2

公開用に本文を削除．

== 実験方法

#figure(
  image("../assets/sample.png", width: 70%),
  caption: [ブラックの針を用いた計器デザイン],
)

#figure(
  image("../assets/sample.png", width: 70%),
  caption: [シルバーの針を用いた計器デザイン],
)

#figure(
  image("../assets/sample.png", width: 70%),
  caption: [レッドの針を用いた計器デザイン],
)
== 実験結果及び考察

#figure(
  image("../assets/sample.png", width: 70%),
  caption: [針の色と読み取り誤差のグラフ],
)

#figure(
  image("../assets/sample.png", width: 70%),
  caption: [針の色と正答率のグラフ],
)

#figure(
  image("../assets/sample.png"),
  caption: [
    純色の誘目性尺度値 (背景別) \
    神作博. "画面構成法による環境内の色彩の誘目性に関する研究", 日本眼科学会, 1987, p.72. より引用, 図は新規に作成した @kamisaku1987 ．
  ],
)
= 結論

実験全体を通じて，読み取り時間を長くすることにより読み取り精度が向上することがわかった．
また，計器形状や針の色が読み取り精度に大きな影響を与えることも明らかになった．

#bibliography("refs.bib")
