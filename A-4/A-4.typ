// 公開用の記入例：氏名は架空，表の値は空欄。理論式・実験条件は自分の実験に合わせて確認する。
#import "../template.typ": report, image-placeholder

#show: doc => report.with(
  exp_y: [],
  exp_m: [],
  exp_d: [],
  subject: [流体実験],
  submit: ([], [], [], [], []),
  temp: [],
  humid: [],
  pressure: [],
)(doc)

#set math.equation(numbering: numbering.with("(1.1)"), supplement: "式")

= 目的

円管内の水流のレイノルズ数の違いが流れの様子や円管中央の流速の時間変化に与える影響を調べ，レイノルズ数の物理的意味および層流・乱流の概念を理解する．
また，円柱周りに形成される渦列と流れのストロハル数との関係を調べることにより，ストロハル数の物理的意味および渦列の概念を理解して，流体の可視化実験を体験する．

= 実験方法

== 実験A-1 染料注入法による流れの観察

水温 $T$ を測定し，その温度における動粘性係数 $nu$ を求める．管路Aの内径を $D_"A1"$，平均流速を $U_b$ とする．

$ R e = U_b D_"A1" / nu $ <equ:1>

目標とするレイノルズ数と管路断面積から流量を設定し，インクの様子をスケッチする．流量を変化させ，流れの状態が変化するときのレイノルズ数を記録する．

== 実験A-2 LDVによる管中央部の流速測定

水温，動粘性係数，管路Bの内径を記録する．各条件で円管中央の流速の時間変化をレーザドップラー流速計で測定し，ヒストグラムと統計量を整理する．

== 実験B トレーサ法による渦列の観察

水温と動粘性係数を記録する．円柱の直径を $D$，流速を $U$ とする．

$ R e = U D / nu $ <equ:2>

各条件に対応するモータの回転速度を設定して渦列を撮影する．平均渦間距離，周期，周波数，ストロハル数を求める．

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

// 記入欄：元の実験結果・考察は公開用に削除。
測定条件・結果・根拠を記入し，図表や理論式と比較して考察する．

#figure(
  image-placeholder(width: 100%),
  caption: [$R e$ = 2328 におけるインクのスケッチ],
) <fig:re2300>

// 記入欄：元の実験結果・考察は公開用に削除。
測定条件・結果・根拠を記入し，図表や理論式と比較して考察する．

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
    [1800], [], [], [], [], [],
    [2300], [], [], [], [], [],
    [6500], [], [], [], [], [],
    table.hline(),
  ),
  caption: [LDV の測定値と計算値],
)<fig:ldv_table>

各$R e$におけるLDV測定結果を以下の@fig:1800, @fig:2300, @fig:6500 に示す．

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

@fig:ldv_table をもとに $R e$ と$U_c$/$U_b$，$u_"rms"$/$U_c$の関係について散布図を作成したところ，以下の@fig:uc_ub, @fig:urms_uc のようになった．

#figure(
  image-placeholder(width: 80%),
  caption: [$R e$ と $U_c$/$U_b$ の関係],
) <fig:uc_ub>

#figure(
  image-placeholder(width: 80%),
  caption: [$R e$ と $u_"rms"$/$U_c$ の関係],
) <fig:urms_uc>

// 記入欄：元の実験結果・考察は公開用に削除。
測定条件・結果・根拠を記入し，図表や理論式と比較して考察する．

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
    [100], [], [], [], [], [],
    [300], [], [], [], [], [],
    [500], [], [], [], [], [],
    table.hline(),
  ),
  caption: [ストロハル数の計算],
)<fig:st_table>

#figure(
  image-placeholder(width: 80%),
  caption: [$R e$ と $S t$ の関係],
) <fig:st>

// 記入欄：元の実験結果・考察は公開用に削除。
測定条件・結果・根拠を記入し，図表や理論式と比較して考察する．

= 結論

// 記入欄：元の実験結果・考察は公開用に削除。
実験全体で得られた結果と，目的に対する結論を自分の言葉で記入する．
