#import "../template.typ": report

#show: doc => report.with(
  exp_y: 2145,
  exp_m: 1,
  exp_d: 14,
  subject: [金属の切削加工],
  submit: (1854, 1, 20, 8, 54),
  temp: [19.473 °C],
  humid: [18.564 %],
  pressure: [1043 hPa],
)(doc)

#set math.equation(numbering: numbering.with("(1.1)"), supplement: "式")

= 目的

公開用に本文を削除．

= 加工部品の設計図

#figure(
  image("../assets/sample.png", width: 80%),
  caption: [製作物の設計図],
) <fig:sekkei>
= 加工手順

公開用に本文を削除．

== 端面削り

公開用に本文を削除．

== 外丸削り①

公開用に本文を削除．

== 外丸削り②

公開用に本文を削除．

== ドリル穴あけ

公開用に本文を削除．

== 面取り

公開用に本文を削除．

= 考察

公開用に本文を削除．

== 想定される誤差原因

#figure(
  table(
    columns: (1fr, auto, auto, auto),
    align: (left, right, right, right),
    stroke: none,
    table.hline(),
    table.header([測定箇所], [目標寸法 $D$ [mm]], [測定結果 $M$ [mm]], [寸法誤差 $M-D$ [mm]]),
    table.hline(stroke: 0.5pt),

    [全長], [ ], [ ], [ ],
    [1段目の長さ], [ ], [ ], [ ],
    [1段目の直径], [ ], [ ], [ ],
    [2段目までの長さ], [ ], [ ], [ ],
    [2段目の直径], [ ], [ ], [ ],
    [穴の深さ], [ ], [ ], [ ],

    table.hline(),
  ),
  caption: [寸法誤差の一覧],
)<tab:dim>
== 切りくずの形状や切削面の状態

公開用に本文を削除．

== 振動が生じる切削条件

公開用に本文を削除．

== バイトの切り込み量と，主軸の回転数以外の切削条件

公開用に本文を削除．

== 加工の正確さを保つための配慮

公開用に本文を削除．

== 加工精度を向上させるための方法・工夫

公開用に本文を削除．

== 加工油剤の役割

公開用に本文を削除．

= 参考文献

公開用に本文を削除．

