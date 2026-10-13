// 一部の情報を伏せた実験レポートの記入例である．

#import "../template.typ": report, image-placeholder

#show: doc => report.with(
  exp_y: 2026,
  exp_m: 4,
  exp_d: 3,
  subject: [
    D-1「表示系におけるヒューマンファクターズ」#linebreak()
    D-1-1 VDT作業における人間の視覚特性に関する実験],
  submit: (2026, 4, 10, 12, 0),
)(doc)

= 目的

VDT（Visual Display Terminal）作業における人間の知覚・判断・行動の特性を，実験データをもとに人間工学的観点から検討する．

= 実験A-1

== 実験方法

計器を形状は縦型，背景色はホワイト，目盛りは 0.1，針の形状は棒，針の長さは L，針の色はブラックとして $t_1$ と $t_2$ を探索した．

== 実験結果及び考察

測定結果と考察を記入する．

#figure(
  image-placeholder(width: 70%),
  caption: [計器の形状と読み取り誤差のグラフ],
)

#figure(
  image-placeholder(width: 70%),
  caption: [計器の形状と正答率のグラフ],
)

= 実験A-2

== 実験方法

形状は円型，背景色はホワイト，目盛りは 0.1，針の形状は棒，針の長さは L とし，針の色をブラック，シルバー，レッドの三色で比較した．

#figure(
  image-placeholder(width: 70%),
  caption: [ブラックの針を用いた計器デザイン],
)

#figure(
  image-placeholder(width: 70%),
  caption: [シルバーの針を用いた計器デザイン],
)

#figure(
  image-placeholder(width: 70%),
  caption: [レッドの針を用いた計器デザイン],
)

== 実験結果及び考察

針の色による読み取り誤差と正答率を記入する．

#figure(
  image-placeholder(width: 70%),
  caption: [針の色と読み取り誤差のグラフ],
)

#figure(
  image-placeholder(width: 70%),
  caption: [針の色と正答率のグラフ],
)

#figure(
  image-placeholder(width: 80%),
  caption: [純色の誘目性尺度値（背景別）の記入用図 @kamisaku1987],
)

= 結論

実験結果に基づく結論を記入する．

#bibliography("refs.bib")
