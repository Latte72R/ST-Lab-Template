// 一部の情報を伏せた実験レポートの記入例である．
#import "../template.typ": report, image-placeholder

#show: doc => report.with(
  exp_y: 2026,
  exp_m: 4,
  exp_d: 3,
  subject: [流体実験],
  submit: (2026, 4, 10, 12, 0),
  temp: [25 °C],
  humid: [50 %],
  pressure: [1013 hPa],
)(doc)

#set math.equation(numbering: numbering.with("(1.1)"), supplement: "式")

= 目的

円管内の水流のレイノルズ数の違いが流れの様子や円管中央の流速の時間変化に与える影響を調べ，レイノルズ数の物理的意味および層流・乱流の概念を理解する．

= 実験方法

== 実験A-1 染料注入法による流れの観察

水温 $T$ を測定し，その温度における動粘性係数 $nu$ を求める．

$ R e = U_b D_"A1" / nu $ <equ:1>

== 実験A-2 LDVによる管中央部の流速測定

水温，動粘性係数，管路Bの内径を記録する．

== 実験B トレーサ法による渦列の観察

水温と動粘性係数を記録する．

$ R e = U D / nu $ <equ:2>

= 実験結果と考察

== 実験A-1 染料注入法による流れの観察

まず，レイノルズ数が1800, 6500のときのインクのスケッチを以下の @fig:re1800, @fig:re6500 に示す．

#figure(
  image-placeholder(width: 100%),
  caption: [$R e$ = 1800 におけるインクのスケッチ],
) <fig:re1800>

#figure(
  image-placeholder(width: 100%),
  caption: [$R e$ = 6500 におけるインクのスケッチ],
) <fig:re6500>

#figure(
  image-placeholder(width: 100%),
  caption: [$R e$ = 2328 におけるインクのスケッチ],
) <fig:re2300>

== 実験A-2 LDVによる管中央部の流速測定

各$R e$における$U_c$/$U_b$，$u_"rms"$/$U_c$の値をグラフにまとめたものを以下の@fig:ldv_table に示す．

#set table(inset: (x: 0.8em, y: 0.6em), stroke: none)

#set table.hline(stroke: 0.6pt)

#set table.vline(stroke: 0.6pt)

#figure(
  table(
    columns: 6,
    table.hline(),
    table.header([$R e$], [$U_b$ [m/s]], [$U_c$ [m/s]], [$u_"rms"$ [m/s]], [$U_c$/$U_b$], [$u_"rms"$/$U_c$]),
    table.hline(),
    [1800], [0], [0], [0], [0], [0],
    [2300], [0], [0], [0], [0], [0],
    [6500], [0], [0], [0], [0], [0],
    table.hline(),
  ),
  caption: [LDV の測定値と計算値],
)<fig:ldv_table>

#figure(
  image-placeholder(width: 80%),
  caption: [$R e$ = 1800 におけるLDV 測定結果],
) <fig:1800>

#figure(
  image-placeholder(width: 80%),
  caption: [$R e$ = 2300 におけるLDV 測定結果],
) <fig:2300>

#figure(
  image-placeholder(width: 80%),
  caption: [$R e$ = 6500 におけるLDV 測定結果],
) <fig:6500>

#figure(
  image-placeholder(width: 80%),
  caption: [$R e$ と $U_c$/$U_b$ の関係],
) <fig:uc_ub>

#figure(
  image-placeholder(width: 80%),
  caption: [$R e$ と $u_"rms"$/$U_c$ の関係],
) <fig:urms_uc>

== 実験B トレーサ法による渦列の観察

各$R e$における渦列の画像を以下@fig:100, @fig:300, @fig:500 に示す．

#figure(
  image-placeholder(width: 100%),
  caption: [$R e$ = 100 における渦列の画像],
) <fig:100>

#figure(
  image-placeholder(width: 100%),
  caption: [$R e$ = 300 における渦列の画像],
) <fig:300>

#figure(
  image-placeholder(width: 100%),
  caption: [$R e$ = 500 における渦列の画像],
) <fig:500>

#set table(inset: (x: 0.8em, y: 0.6em), stroke: none)

#set table.hline(stroke: 0.6pt)

#set table.vline(stroke: 0.6pt)

#figure(
  table(
    columns: 6,
    table.hline(),
    table.header([$R e$], [$U$ [m/s]], [$L_"average"$ [m]], [$C_"average"$ [s]], [$f$ [1/s]], [$S t$]),
    table.hline(),
    [100], [0], [0], [0], [0], [0],
    [300], [0], [0], [0], [0], [0],
    [500], [0], [0], [0], [0], [0],
    table.hline(),
  ),
  caption: [ストロハル数の計算],
)<fig:st_table>

#figure(
  image-placeholder(width: 80%),
  caption: [$R e$ と $S t$ の関係],
) <fig:st>

= 結論

実験結果に基づく結論を記入する．
