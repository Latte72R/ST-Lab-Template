#import "../template.typ": report
#import "@preview/physica:0.9.7": *

#show: doc => report.with(
  exp_y: 1921,
  exp_m: 11,
  exp_d: 4,
  subject: [量子テレポーテーション],
  submit: (2177, 11, 11, 1, 3),
  temp: [26.372 °C],
  humid: [30 %],
  pressure: [984 hPa],
)(doc)

= 目的

公開用に本文を削除．

= 理論

$
  ket(psi)_A = alpha ket(0)_A + beta ket(1)_A
$
$
  ket(Phi_+) = 1/sqrt(2) (ket(00) + ket(11)) \
  ket(Psi_+) = 1/sqrt(2) (ket(01) + ket(10)) \
  ket(Phi_-) = 1/sqrt(2) (ket(00) - ket(11)) \
  ket(Psi_-) = 1/sqrt(2) (ket(01) - ket(10))
$
$
  ket(phi)_C = alpha ket(0)_C + beta ket(1)_C
$
= 実験方法

公開用に本文を削除．

= 実験結果と考察

公開用に本文を削除．

== 課題1

#figure(
  image("../assets/sample.png", width: 60%),
  caption: [初期状態を$ket(00)$とした場合の回路図],
) <fig:r1-00-kairo>

#figure(
  image("../assets/sample.png", width: 60%),
  caption: [初期状態を$ket(00)$とした場合のヒストグラム],
) <fig:r1-00-hist>
$
  H times.o I_2 = 1/sqrt(2) mat(
    1, 0, 1, 0;
    0, 1, 0, 1;
    1, 0, -1, 0;
    0, 1, 0, -1
  )
$
$
  "CNOT" (H times.o I_2) ket(00) & =
                                   mat(
                                     1, 0, 0, 0;
                                     0, 1, 0, 0;
                                     0, 0, 0, 1;
                                     0, 0, 1, 0
                                   ) 1/sqrt(2) mat(
                                     1, 0, 1, 0;
                                     0, 1, 0, 1;
                                     1, 0, -1, 0;
                                     0, 1, 0, -1
                                   ) vec(1, 0, 0, 0) \
                                 & = 1/sqrt(2) vec(1, 0, 0, 1) \
                                 & = 1/sqrt(2) (ket(00) + ket(11))
$
$
  P(ket(00)) = P(ket(11)) = |1/sqrt(2)|^2 = 1/2, quad
  P(ket(01)) = P(ket(10)) = 0
$

#figure(
  image("../assets/sample.png", width: 60%),
  caption: [初期状態を$ket(01)$とした場合のヒストグラム],
) <fig:r1-01-hist>
$
  "CNOT" (H times.o I_2) ket(01) = 1/sqrt(2) (ket(01) + ket(10))
$
$
  P(ket(01)) = P(ket(10)) = |1/sqrt(2)|^2 = 1/2, quad
  P(ket(00)) = P(ket(11)) = 0
$

#figure(
  image("../assets/sample.png", width: 60%),
  caption: [初期状態を$ket(10)$とした場合のヒストグラム],
) <fig:r1-10-hist>
$
  "CNOT" (H times.o I_2) ket(10) = 1/sqrt(2) (ket(00) - ket(11))
$
$
  P(ket(00)) = P(ket(11)) = |1/sqrt(2)|^2 = 1/2, quad
  P(ket(01)) = P(ket(10)) = 0
$

#figure(
  image("../assets/sample.png", width: 60%),
  caption: [初期状態を$ket(11)$とした場合のヒストグラム],
) <fig:r1-11-hist>
$
  "CNOT" (H times.o I_2) ket(11) = 1/sqrt(2) (ket(01) - ket(10))
$
$
  P(ket(01)) = P(ket(10)) = |1/sqrt(2)|^2 = 1/2, quad
  P(ket(00)) = P(ket(11)) = 0
$
== 課題2

#figure(
  image("../assets/sample.png", width: 100%),
  caption: [$(ket(0) + ket(1))$/$sqrt(2)$を送信し愚直に測定した場合の回路図],
) <fig:r2-naive-kairo>

#figure(
  image("../assets/sample.png", width: 60%),
  caption: [$(ket(0) + ket(1))$/$sqrt(2)$を送信し愚直に測定した場合のヒストグラム],
) <fig:r2-naive-hist>
$
  H ket(+) & = H (ket(0) + ket(1)) / sqrt(2) \
           & = 1/sqrt(2) mat(
               1, 1;
               1, -1
             ) 1/sqrt(2) vec(1, 1) \
           & = vec(1, 0) \
           & = ket(0)
$
$
  H ket(-) & = H (ket(0) - ket(1)) / sqrt(2) \
           & = 1/sqrt(2) mat(
               1, 1;
               1, -1
             ) 1/sqrt(2) vec(1, -1) \
           & = vec(0, 1) \
           & = ket(1)
$

#figure(
  image("../assets/sample.png", width: 100%),
  caption: [$(ket(0) + ket(1))$/$sqrt(2)$を送信しアダマールゲートを利用して測定した場合の回路図],
) <fig:r2-kairo>

#figure(
  image("../assets/sample.png", width: 60%),
  caption: [$(ket(0) + ket(1))$/$sqrt(2)$を送信しアダマールゲートを利用して測定した場合のヒストグラム],
) <fig:r2-hist>
== 選択課題1

公開用に本文を削除．

== 選択課題2

公開用に本文を削除．

