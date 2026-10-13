// 一部の情報を伏せた実験レポートの記入例である．
#import "../template.typ": report, image-placeholder, ket

#show: doc => report.with(
  exp_y: 2026,
  exp_m: 4,
  exp_d: 3,
  subject: [量子テレポーテーション],
  submit: (2026, 4, 10, 12, 0),
  temp: [25 °C],
  humid: [50 %],
  pressure: [1013 hPa],
)(doc)

= 目的

量子コンピュータの基礎概念である量子ビット，量子ゲート，量子回路について理解を深めるとともに，量子テレポーテーションに関する基本的な回路の実装を通じて量子情報伝達の原理を学ぶことを目的とする．

= 理論

実験で用いる基本式を示す．

$
  ket(psi)_A = alpha ket(0)_A + beta ket(1)_A
$

$ ket(Phi_+) = 1/sqrt(2) (ket(00) + ket(11)) $

#table(
  columns: (12em, 1fr),
  rows: 3em,
  align: center + horizon,

  [$ket(phi)_"AB"$の測定結果], [作用させるゲート],

  [00], [],

  [01], [],

  [10], [],

  [11], [],
)

= 実験方法

量子ゲートによる量子ビットの操作を通じた重ね合わせ状態や量子もつれの作成をIBM Quantum Composer環境においてシミュレーションした．

= 実験結果と考察

== 課題1

初期状態を$ket(00), ket(01), ket(10), ket(11)$ とし，0番目にアダマールゲートHを作用させた後，0番目の量子ビットから1番目の量子ビットにCNOTゲートを作用させた．

#figure(
  image-placeholder(width: 60%),
  caption: [初期状態を$ket(00)$とした場合の回路図],
) <fig:r1-00-kairo>

#figure(
  image-placeholder(width: 60%),
  caption: [初期状態を$ket(00)$とした場合のヒストグラム],
) <fig:r1-00-hist>

// Typst：mat(...) は行列。列はカンマ，行はセミコロンで区切る。
$
  H times.o I_2 = 1/sqrt(2) mat(
    1, 0, 1, 0;
    0, 1, 0, 1;
    1, 0, -1, 0;
    0, 1, 0, -1
  )
$

$ "CNOT" (H times.o I_2) ket(00) = 1/sqrt(2) (ket(00) + ket(11)) $

#figure(
  image-placeholder(width: 60%),
  caption: [初期状態を$ket(01)$とした場合のヒストグラム],
) <fig:r1-01-hist>

#figure(
  image-placeholder(width: 60%),
  caption: [初期状態を$ket(10)$とした場合のヒストグラム],
) <fig:r1-10-hist>

#figure(
  image-placeholder(width: 60%),
  caption: [初期状態を$ket(11)$とした場合のヒストグラム],
) <fig:r1-11-hist>

== 課題2

実験3において，送信したい量子状態を $ket(psi_"in") = ket(+) = (ket(0) + ket(1))$/$sqrt(2)$ とし，量子テレポーテーション回路を用いてこの状態を別の量子ビットに転送した．

#figure(
  image-placeholder(width: 100%),
  caption: [$(ket(0) + ket(1))$/$sqrt(2)$を送信し愚直に測定した場合の回路図],
) <fig:r2-naive-kairo>

#figure(
  image-placeholder(width: 60%),
  caption: [$(ket(0) + ket(1))$/$sqrt(2)$を送信し愚直に測定した場合のヒストグラム],
) <fig:r2-naive-hist>

// Typst：mat(...) は行列。列はカンマ，行はセミコロンで区切る．
$
  H ket(+) & = 1/sqrt(2) mat(1, 1; 1, -1) 1/sqrt(2) vec(1, 1) \
           & = ket(0)
$

#figure(
  image-placeholder(width: 100%),
  caption: [$(ket(0) + ket(1))$/$sqrt(2)$を送信しアダマールゲートを利用して測定した場合の回路図],
) <fig:r2-kairo>

#figure(
  image-placeholder(width: 60%),
  caption: [$(ket(0) + ket(1))$/$sqrt(2)$を送信しアダマールゲートを利用して測定した場合のヒストグラム],
) <fig:r2-hist>

== 選択課題1

測定結果と考察を記入する．

== 選択課題2

測定結果と考察を記入する．
