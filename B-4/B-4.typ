// 一部の情報を伏せた実験レポートの記入例である．
#import "../template.typ": report, image-placeholder

#show: doc => report.with(
  exp_y: 2026,
  exp_m: 4,
  exp_d: 3,
  subject: [フーリエ解析と波形の合成],
  submit: (2026, 4, 10, 12, 0),
  temp: [25 °C],
  humid: [50 %],
  pressure: [1013 hPa],
)(doc)

= 実験目的

様々な波形をフーリエ解析し，その特性を理解する．

= 理論

実験で用いる基本式を示す．

== フーリエ級数展開の基本

周期 $2 pi$ をもつ周期関数 $f(x)$ は，正弦波と余弦波の和として次のように表せる．

#set math.equation(numbering: numbering.with("(1.1)"), supplement: "式")

$
  f(x) = a_0/2 + sum_(n=1)^(∞) (a_n cos n x + b_n sin n x)
$<equate0>

$
  a_n = 1/pi integral_(0)^(2 pi) f(x) cos n x d x quad (n = 1, 2, …) \
  b_n = 1/pi integral_(0)^(2 pi) f(x) sin n x d x quad (n = 1, 2, …)
$<equate1>

$
  A_n = sqrt(a_n^2 + b_n^2) \
  phi_n = tan^(-1)(b_n / a_n)
$<equate2-1>

== 正規直交性

フーリエ級数展開の本質は，関数を正規直交基底の一次結合として表しているという点にある．

$
  ⟨f, g⟩ = 1/pi integral_(0)^(2 pi) f(x) g(x) d x
$<equate3>

== 完全性

フーリエ級数の部分和は以下の @equate8 によって表される．

$
  f_N(x) = a_0/2 + sum_(n=1)^(N) (a_n cos n x + b_n sin n x)
$<equate8>

= 実験方法

様々な数式で表現される波形をPythonプログラムで読み込み，科学計算ライブラリを利用して高速フーリエ変換（fast Fourier transform: FFT）を行った．

= 実験結果と考察

== 正弦波の解析

@fig:sin-1 に解析した正弦波の波形を示す．

#figure(
  image-placeholder(width: 50%),
  caption: [解析した正弦波の波形],
) <fig:sin-1>

#figure(
  table(
    columns: (5em,) * 5,
    [n], [$a_n$], [$b_n$], [$A_n$], [$phi_n$],
    [0], [0], [0], [0], [0],
    [1], [0], [0], [0], [0],
    [2], [0], [0], [0], [0],
    [3], [0], [0], [0], [0],
    [4], [0], [0], [0], [0],
    [5], [0], [0], [0], [0],
  ),
  caption: [フーリエ係数と振幅・位相スペクトル],
) <tab:sin-1>

$
  f(x) = A + B sin(2 pi / T x)
$

== 四角波（矩形波）・三角波・のこぎり波の解析

@fig:rect1-1 に解析した四角波の波形を示す．

#figure(
  image-placeholder(width: 50%),
  caption: [解析した四角波の波形],
) <fig:rect1-1>

#figure(
  image-placeholder(width: 50%),
  caption: [解析した四角波の振幅スペクトル],
) <fig:rect1-2>

#figure(
  table(
    columns: (5em,) * 5,
    [n], [$a_n$], [$b_n$], [$A_n$], [$phi_n$],

    [0], [0], [0], [0], [0],
    [1], [0], [0], [0], [0],
    [2], [0], [0], [0], [0],
    [3], [0], [0], [0], [0],
    [4], [0], [0], [0], [0],
    [5], [0], [0], [0], [0],
    [6], [0], [0], [0], [0],
    [7], [0], [0], [0], [0],
    [8], [0], [0], [0], [0],
  ),
  caption: [四角波のフーリエ係数と振幅・位相スペクトル],
) <tab:rect1-1>

#figure(
  image-placeholder(width: 50%),
  caption: [解析した三角波の波形],
) <fig:tri1-1>

#figure(
  image-placeholder(width: 50%),
  caption: [解析した三角波の振幅スペクトル],
) <fig:tri1-2>

#figure(
  table(
    columns: (5em,) * 5,
    [n], [$a_n$], [$b_n$], [$A_n$], [$phi_n$],

    [0], [0], [0], [0], [0],
    [1], [0], [0], [0], [0],
    [2], [0], [0], [0], [0],
    [3], [0], [0], [0], [0],
    [4], [0], [0], [0], [0],
    [5], [0], [0], [0], [0],
    [6], [0], [0], [0], [0],
    [7], [0], [0], [0], [0],
    [8], [0], [0], [0], [0],
    [9], [0], [0], [0], [0],
  ),
  caption: [三角波のフーリエ係数と振幅・位相スペクトル],
) <tab:tri1-1>

#figure(
  image-placeholder(width: 50%),
  caption: [解析したのこぎり波の波形],
) <fig:saw-1>

#figure(
  image-placeholder(width: 50%),
  caption: [解析したのこぎり波の振幅スペクトル],
) <fig:saw-2>

#figure(
  table(
    columns: (5em,) * 5,
    [n], [$a_n$], [$b_n$], [$A_n$], [$phi_n$],

    [0], [0], [0], [0], [0],
    [1], [0], [0], [0], [0],
    [2], [0], [0], [0], [0],
    [3], [0], [0], [0], [0],
    [4], [0], [0], [0], [0],
    [5], [0], [0], [0], [0],
    [6], [0], [0], [0], [0],
    [7], [0], [0], [0], [0],
    [8], [0], [0], [0], [0],
  ),
  caption: [のこぎり波のフーリエ係数と振幅・位相スペクトル],
) <tab:saw-1>

== 減衰振動の解析

@fig:damped-1 に解析した減衰振動の波形を示す．

#figure(
  image-placeholder(width: 50%),
  caption: [解析した減衰振動の波形],
) <fig:damped-1>

#figure(
  image-placeholder(width: 50%),
  caption: [解析した減衰振動の振幅スペクトル],
) <fig:damped-2>

#figure(
  image-placeholder(width: 50%),
  caption: [解析した減衰振動の位相スペクトル],
) <fig:damped-3>

#figure(
  image-placeholder(width: 50%),
  caption: [再合成した減衰振動の波形],
) <fig:damped-4>

== うなり波の解析

@fig:beat-1 に解析したうなり波の波形を示す．

#figure(
  image-placeholder(width: 50%),
  caption: [解析したうなり波の波形],
) <fig:beat-1>

#figure(
  image-placeholder(width: 50%),
  caption: [解析したうなり波の振幅スペクトル],
) <fig:beat-2>

#figure(
  image-placeholder(width: 50%),
  caption: [解析したうなり波の位相スペクトル],
) <fig:beat-3>

$
  cos(omega_1 x) + cos(omega_2 x)
  = 2 cos((omega_1 + omega_2)x/2) cos((omega_1 - omega_2)x/2)
$<equate-beat>

== 三角波や四角波の幅をせまくした場合の解析

@fig:rect2-1 に解析した幅の狭い四角波の波形を示す．

#figure(
  image-placeholder(width: 50%),
  caption: [解析した幅の狭い四角波の波形],
) <fig:rect2-1>

#figure(
  image-placeholder(width: 50%),
  caption: [解析した幅の狭い四角波の振幅スペクトル],
) <fig:rect2-2>

#figure(
  image-placeholder(width: 50%),
  caption: [解析した幅の狭い三角波の波形],
) <fig:tri2-1>

#figure(
  image-placeholder(width: 50%),
  caption: [解析した幅の狭い三角波の振幅スペクトル],
) <fig:tri2-2>

== 手描き波形の解析

@fig:data-1 に解析した手描き波形の波形を示す．

#figure(
  image-placeholder(width: 50%),
  caption: [解析した手描き波形の波形],
) <fig:data-1>

#figure(
  image-placeholder(width: 50%),
  caption: [解析した手描き波形の振幅スペクトル],
) <fig:data-2>

#figure(
  image-placeholder(width: 50%),
  caption: [解析した手描き波形の位相スペクトル],
) <fig:data-3>

== ビルの温度変化の解析

@fig:temp-1 に解析したビルの温度変化の波形を示す．

#figure(
  image-placeholder(width: 50%),
  caption: [解析したビルの温度変化の波形],
) <fig:temp-1>

#figure(
  image-placeholder(width: 50%),
  caption: [解析したビルの温度変化の振幅スペクトル],
) <fig:temp-2>

== 心電図信号の解析

@fig:ecg-1 に解析した心電図信号の波形を示す．

#figure(
  image-placeholder(width: 50%),
  caption: [解析した心電図信号の波形],
) <fig:ecg-1>

#figure(
  image-placeholder(width: 50%),
  caption: [解析した心電図信号の振幅スペクトル],
) <fig:ecg-2>

$
  T = T_s / n \
  text("BPM") = 60 / T = (60 n) / T_s
$

== 音声波形の解析

@fig:sound-1 に解析した音声波形の波形を示す．

#figure(
  image-placeholder(width: 50%),
  caption: [解析した音声波形の波形],
) <fig:sound-1>

#figure(
  image-placeholder(width: 50%),
  caption: [解析した音声波形の振幅スペクトル],
) <fig:sound-2>

= 結論

実験結果に基づく結論を記入する．
