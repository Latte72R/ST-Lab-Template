#import "../template.typ": report

#show: doc => report.with(
  exp_y: 1859,
  exp_m: 12,
  exp_d: 14,
  subject: [アナログ演算回路],
  submit: (1880, 12, 27, 14, 30),
  temp: [24.484 °C],
  humid: [28 %],
  pressure: [908 hPa],
  coexp: ([フロップ・オコーネル],),
)(doc)

#set math.equation(numbering: numbering.with("(1.1)"), supplement: "式")

#set table(inset: (x: 0.8em, y: 0.6em), stroke: none)
#set table.hline(stroke: 0.6pt)
#set table.vline(stroke: 0.6pt)

= 実験目的

公開用に本文を削除．

= 実験結果と考察および課題

公開用に本文を削除．

== 実験1 (積分器)

#figure(
  image("../assets/sample.png", width: 80%),
  caption: [実験1で用いた回路図],
) <fig:kairo1>
$ u(t)/R + C (dif y(t)) / (dif t) = 0 $
$ (dif y(t)) / (dif t) = - 1/(R C) times u(t) $
$ y(t) = y(0) - 1/(R C) times integral_0^t u(tau) dif tau $
$ (dif y(t)) / (dif t) = - E_0/(R C) $
=== 実験A

#figure(
  image("../assets/sample.png", width: 80%),
  caption: [振幅 $E_0 = 1$ [V] ，周波数 $f = 500$ [Hz] の矩形波の入力波形],
) <fig:input1>

#figure(
  image("../assets/sample.png", width: 80%),
  caption: [振幅 $E_0 = 1$ [V] ，周波数 $f = 500$ [Hz] の矩形波の出力波形],
) <fig:output1>

#figure(
  table(
    columns: 2,
    table.hline(),
    table.header([傾き (実験値) [V/s]], [傾き (理論値) [V/s]]),
    table.hline(),
    [$-9.6 times 10^3$], [ ],
    table.hline(),
  ),
  caption: [傾きの実験値と理論値],
)<fig:slope_comparison>
=== 実験B

#figure(
  image("../assets/sample.png", width: 80%),
  caption: [振幅 $E_0 = 3.1$ [V] ，周波数 $f = 500$ [Hz] の矩形波の入力波形],
) <fig:input2>

#figure(
  image("../assets/sample.png", width: 80%),
  caption: [振幅 $E_0 = 3.1$ [V] ，周波数 $f = 500$ [Hz] の矩形波の出力波形],
) <fig:output2>
$ E_0/(2 f R C) >= 2 V_(CC) $
$ E_0 >= 4 V_(CC) f R C $
=== 実験C

#figure(
  image("../assets/sample.png", width: 80%),
  caption: [振幅 $E_0 = 1$ [V] ，周波数 $f = 152$ [Hz] の矩形波の入力波形],
) <fig:input3>

#figure(
  image("../assets/sample.png", width: 80%),
  caption: [振幅 $E_0 = 1$ [V] ，周波数 $f = 152$ [Hz] の矩形波の出力波形],
) <fig:output3>
$ E_0/(2 f R C) $
$ E_0/(2 f R C) = 2 V_(CC) $
$ f = E_0/(4 V_(CC) R C) $
$ f = 1/(4 times 15 times (9.838 times 10^3) times (10.164 times 10^(-9))) approx 1.67 times 10^2 "Hz" $
== 実験2 (1次ダイナミカルシステム)

#figure(
  image("../assets/sample.png", width: 80%),
  caption: [実験2で用いた回路図],
) <fig:kairo2>
$ u(t)/R + y(t)/r + C (dif y(t)) / (dif t) = 0 $
$ C (dif y(t)) / (dif t) + 1/r times y(t) = -1/R times u(t) $
$ r C (dif y(t)) / (dif t) + y(t) = -r/R times u(t) $
$ u(t) = E sin(omega t) $
$ y(t) = A sin(omega t + phi) $
$ (dif y(t)) / (dif t) = omega A cos(omega t + phi) $
$ r C (dif y(t)) / (dif t) + y(t) = -r/R u(t) $
$ A = r/R E / sqrt(1 + (omega r C)^2) $
$ phi = -arctan(omega r C) $
$ y(t) = - r/R E / sqrt(1 + (omega r C)^2) sin(omega t - arctan(omega r C)) $

#figure(
  table(
    columns: 5,
    table.hline(),
    table.header(
      [入力電圧\ 周波数\ $f$[Hz]],
      [入力電圧\ 実効値\ $E$/$sqrt(2)$[V]],
      [出力電圧\ 実効値\ $A$/$sqrt(2)$[V]],
      [ゲイン\ (実験値)\ [dB]],
      [ゲイン\ (理論値)\ [dB]],
    ),
    table.hline(),
    [$1.00 times 10^2$], [ ], [ ], [ ], [ ],
    [$4.00 times 10^2$], [ ], [ ], [ ], [ ],
    [$7.00 times 10^2$], [ ], [ ], [ ], [ ],
    [$1.00 times 10^3$], [ ], [ ], [ ], [ ],
    [$4.00 times 10^3$], [ ], [ ], [ ], [ ],
    [$7.00 times 10^3$], [ ], [ ], [ ], [ ],
    [$1.00 times 10^4$], [ ], [ ], [ ], [ ],
    [$4.00 times 10^4$], [ ], [ ], [ ], [ ],
    [$7.00 times 10^4$], [ ], [ ], [ ], [ ],
    [$1.00 times 10^5$], [ ], [ ], [ ], [ ],
    table.hline(),
  ),
  caption: [周波数応答],
)<fig:freq_response>

#figure(
  image("../assets/sample.png", width: 80%),
  caption: [1次ダイナミカルシステムのボード線図],
) <fig:bode_plot>

#figure(
  image("../assets/sample.png", width: 80%),
  caption: [1次ダイナミカルシステムのボード線図 (-3dB基準線付与)],
) <fig:bode_plot2>
$ r/R 1/sqrt(1 + (2 pi f r C)^2) = r/R 1/sqrt(2) $
$ f_B = (1/(2 pi r C)) sqrt(2 (r/R)^2 - 1) $
$ f_B approx 1/(2 pi r C) $
= 結論

- 実験を通してオペアンプの基本的な特性を理解することができた．
- 入力された矩形波が積分器により積分され，三角波が出力されることが確認できた．
- 1次ダイナミカルシステムの周波数特性とカットオフについて理解することができた．
