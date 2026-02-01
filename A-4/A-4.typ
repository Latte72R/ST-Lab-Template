#import "../template.typ": report
#import "@preview/physica:0.9.7": *

#show: doc => report.with(
  exp_y: 1935,
  exp_m: 1,
  exp_d: 8,
  subject: [流体実験],
  submit: (1984, 1, 21, 10, 59),
  temp: [24.402 °C],
  humid: [23 %],
  pressure: [1035 hPa],
)(doc)

#set math.equation(numbering: numbering.with("(1.1)"), supplement: "式")

= 目的

公開用に本文を削除．

= 実験方法

公開用に本文を削除．

== 実験A-1 染料注入法による流れの観察

$
  R e = U_b D_"A1" / nu
$<equ:1>
== 実験A-2 LDVによる管中央部の流速測定

公開用に本文を削除．

== 実験B トレーサ法による渦列の観察

$
  R e = U D / nu
$<equ:2>
= 実験結果と考察

公開用に本文を削除．

== 実験A-1 染料注入法による流れの観察

#figure(
  image("../assets/sample.png", width: 100%),
  caption: [$R e$ = 1800 におけるインクのスケッチ],
) <fig:re1800>

#figure(
  image("../assets/sample.png", width: 100%),
  caption: [$R e$ = 6500 におけるインクのスケッチ],
) <fig:re6500>

#figure(
  image("../assets/sample.png", width: 100%),
  caption: [$R e$ = 2328 におけるインクのスケッチ],
) <fig:re2300>
== 実験A-2 LDVによる管中央部の流速測定

#figure(
  table(
    columns: 6,
    table.hline(),
    table.header([$R e$], [$U_b$ [m/s]], [$U_c$ [m/s]], [$u_"rms"$ [m/s]], [$U_c$/$U_b$], [$u_"rms"$/$U_c$]),
    table.hline(),
    [1800], [ ], [ ], [ ], [ ], [ ],
    [2300], [ ], [ ], [ ], [ ], [ ],
    [6500], [ ], [ ], [ ], [ ], [ ],
    table.hline(),
  ),
  caption: [LDV の測定値と計算値],
)<fig:ldv_table>

#figure(
  image("../assets/sample.png", width: 80%),
  caption: [$R e$ = 1800 におけるLDV 測定結果],
) <fig:1800>

#figure(
  image("../assets/sample.png", width: 80%),
  caption: [$R e$ = 2300 におけるLDV 測定結果],
) <fig:2300>

#figure(
  image("../assets/sample.png", width: 80%),
  caption: [$R e$ = 6500 におけるLDV 測定結果],
) <fig:6500>

#figure(
  image("../assets/sample.png", width: 80%),
  caption: [$R e$ と $U_c$/$U_b$ の関係],
) <fig:uc_ub>

#figure(
  image("../assets/sample.png", width: 80%),
  caption: [$R e$ と $u_"rms"$/$U_c$ の関係],
) <fig:urms_uc>
== 実験B トレーサ法による渦列の観察

#figure(
  image("../assets/sample.png", width: 100%),
  caption: [$R e$ = 100 における渦列の画像],
) <fig:100>

#figure(
  image("../assets/sample.png", width: 100%),
  caption: [$R e$ = 300 における渦列の画像],
) <fig:300>

#figure(
  image("../assets/sample.png", width: 100%),
  caption: [$R e$ = 500 における渦列の画像],
) <fig:500>

#figure(
  table(
    columns: 6,
    table.hline(),
    table.header([$R e$], [$U$ [m/s]], [$L_"average"$ [m]], [$C_"average"$ [s]], [$f$ [1/s]], [$S t$]),
    table.hline(),
    [100], [ ], [ ], [ ], [ ], [ ],
    [300], [ ], [ ], [ ], [ ], [ ],
    [500], [ ], [ ], [ ], [ ], [ ],
    table.hline(),
  ),
  caption: [ストロハル数の計算],
)<fig:st_table>

#figure(
  image("../assets/sample.png", width: 80%),
  caption: [$R e$ と $S t$ の関係],
) <fig:st>
= 結論
本実験では，円管内流および円柱周りの流れを通して，流体現象におけるレイノルズ数 $R e$ とストロハル数 $S t$ の役割を検証した．
実験Aでは，可視化とLDV計測により，$R e approx 2300$ を境に層流から乱流への遷移を確認し，乱流化に伴って速度分布が平坦化することが分かった．
実験Bでは，流速の変化にかかわらず $S t$ が約 0.2 の一定値付近をとることを確認し，カルマン渦の発生メカニズムの基本的な性質を理解した．

