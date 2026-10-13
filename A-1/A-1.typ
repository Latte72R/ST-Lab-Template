// 一部の情報を伏せた実験レポートの記入例である．
#import "../template.typ": report, image-placeholder

#show: doc => report.with(
  exp_y: 2026,
  exp_m: 4,
  exp_d: 3,
  subject: [アナログ演算回路],
  submit: (2026, 4, 10, 12, 0),
  temp: [25 °C],
  humid: [50 %],
  pressure: [1013 hPa],
  coexp: ([エミリア],),
)(doc)

#set math.equation(numbering: numbering.with("(1.1)"), supplement: "式")

#set table(inset: (x: 0.8em, y: 0.6em), stroke: none)
#set table.hline(stroke: 0.6pt)
#set table.vline(stroke: 0.6pt)

= 実験目的

- オペアンプの機能と基本的な特性を理解する．

= 実験結果と考察および課題

== 実験1 (積分器)

以下に実験1で用いた回路図を示す．

#figure(
  image-placeholder(width: 80%),
  caption: [実験1で用いた回路図],
) <fig:kairo1>

$ y(t) = y(0) - 1/(R C) times integral_0^t u(tau) dif tau $

=== 実験A

入力波形を以下の @fig:input1 のように矩形波を振幅 $E_0 = 1$ [V] ，周波数 $f = 500$ [Hz] としたときの出力波形を測定した．

#figure(
  image-placeholder(width: 80%),
  caption: [振幅 $E_0 = 1$ [V] ，周波数 $f = 500$ [Hz] の矩形波の入力波形],
) <fig:input1>

#figure(
  image-placeholder(width: 80%),
  caption: [振幅 $E_0 = 1$ [V] ，周波数 $f = 500$ [Hz] の矩形波の出力波形],
) <fig:output1>

$ s = (Delta y)/(Delta t) $

$ s_"theory" = -E_0/(R C) $

#figure(
  table(
    columns: 2,
    table.hline(),
    table.header([傾き (実験値) [V/s]], [傾き (理論値) [V/s]]),
    table.hline(),
    [0], [0],
    table.hline(),
  ),
  caption: [傾きの実験値と理論値],
)<fig:slope_comparison>

=== 実験B

測定結果と考察を記入する．

#figure(
  image-placeholder(width: 80%),
  caption: [振幅 $E_0 = 3.1$ [V] ，周波数 $f = 500$ [Hz] の矩形波の入力波形],
) <fig:input2>

#figure(
  image-placeholder(width: 80%),
  caption: [振幅 $E_0 = 3.1$ [V] ，周波数 $f = 500$ [Hz] の矩形波の出力波形],
) <fig:output2>

$ E_0 >= 4 V_(CC) f R C $

=== 実験C

入力波形を以下の @fig:input3 のように矩形波を振幅 $E_0 = 1$ [V] ，周波数 $f = 152$ [Hz] としたときの出力波形を測定した．

#figure(
  image-placeholder(width: 80%),
  caption: [振幅 $E_0 = 1$ [V] ，周波数 $f = 152$ [Hz] の矩形波の入力波形],
) <fig:input3>

#figure(
  image-placeholder(width: 80%),
  caption: [振幅 $E_0 = 1$ [V] ，周波数 $f = 152$ [Hz] の矩形波の出力波形],
) <fig:output3>

$ f = E_0/(4 V_(CC) R C) $

== 実験2 (1次ダイナミカルシステム)

以下に実験2で用いた回路図を示す．

#figure(
  image-placeholder(width: 80%),
  caption: [実験2で用いた回路図],
) <fig:kairo2>

$ r C (dif y(t)) / (dif t) + y(t) = -u(t) $ <equ:circuit_eq>

$ A = r/R E / sqrt(1 + (omega r C)^2) $

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
    [$1.00 times 10^2$], [0], [0], [0], [0],
    [$4.00 times 10^2$], [0], [0], [0], [0],
    [$7.00 times 10^2$], [0], [0], [0], [0],
    [$1.00 times 10^3$], [0], [0], [0], [0],
    [$4.00 times 10^3$], [0], [0], [0], [0],
    [$7.00 times 10^3$], [0], [0], [0], [0],
    [$1.00 times 10^4$], [0], [0], [0], [0],
    [$4.00 times 10^4$], [0], [0], [0], [0],
    [$7.00 times 10^4$], [0], [0], [0], [0],
    [$1.00 times 10^5$], [0], [0], [0], [0],
    table.hline(),
  ),
  caption: [周波数応答],
)<fig:freq_response>

#figure(
  image-placeholder(width: 80%),
  caption: [1次ダイナミカルシステムのボード線図],
) <fig:bode_plot>

#figure(
  image-placeholder(width: 80%),
  caption: [1次ダイナミカルシステムのボード線図 (-3dB基準線付与)],
) <fig:bode_plot2>

$ f_B = 1/(2 pi r C) $

= 結論

実験結果に基づく結論を記入する．
