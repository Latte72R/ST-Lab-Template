// 実験レポート向けの書き方集。必要なコードを各実験の .typ にコピーする。
// 参考：https://github.com/mumumu6/typst-template （コードと出力を並べる構成）
#import "template.typ": body, head, image-placeholder
#set text(lang: "ja", font: body, size: 10pt)
#set page(paper: "a4", numbering: "1")
#set heading(numbering: "1.1.")
#set math.equation(numbering: "(1)", supplement: [式])
#show heading: set text(font: head)
#show raw: set text(size: 9pt)
#let demo(code, output) = grid(
  columns: (1fr, 1fr), gutter: 1em,
  [*コード* #parbreak() #code], [*出力* #parbreak() #output],
)

= 実験レポートの書き方

== 表紙・見出し・段落

表紙は `report.with(...)` で指定します．`[]` は空欄，`()` は共同実験者なしを表します．段落は空行で区切ります．
```typst
#import "../template.typ": report, image-placeholder
#show: doc => report.with(
  subject: [実験題目], name: [菜月 昴],
  student_id: [00000000], coexp: ([エミリア], [レム]),
  exp_y: 2026, exp_m: 4, exp_d: 3,
  dept: [異世界工学科], clazz: [A],
  temp: [25 °C], humid: [50 %], pressure: [1013 hPa],
)(doc)
= 実験目的
本文を記入する．
== 実験1
=== 実験方法
```

== 図・相互参照

画像枠を `image("波形.png", width: 80%)` に置き換えます．ラベル `<...>` を付けると `@...` で番号を参照できます．
#demo[
  ```typst
  #figure(
    image-placeholder(width: 80%),
    caption: [測定した波形],
  ) <fig:wave>
  @fig:wave に波形を示す．
  ```
][
  #figure(image-placeholder(width: 80%, height: 18mm), caption: [測定した波形]) <fig:wave>
  @fig:wave に波形を示す．
]

== 表・単位

カンマでセルを区切ります．`columns` は列数，`[]` は空欄のセルです．単位は見出しに記入します．
#demo[
  ```typst
  #figure(table(
    columns: 3,
    table.header([条件], [電圧 (V)], [電流 (mA)]),
    [条件A], [], [],
    [条件B], [], [],
  ), caption: [測定値]) <tab:data>
  ```
][
  #figure(table(
    columns: 3,
    table.header([条件], [電圧 (V)], [電流 (mA)]),
    [条件A], [], [], [条件B], [], [],
  ), caption: [測定値]) <tab:data>
]

== 数式・誤差・積分・行列

文中の式は `$R=10$`，独立した式は `$ R=10 $` と書きます．`_` は添字，`^` は指数，`/` は分数です．文字列は `"..."` で立体にします．行列は列をカンマ，行をセミコロンで区切ります．
#demo[
  ```typst
  $ R = (10.0 plus.minus 0.1) "kΩ" $
  $ epsilon = abs(x - x_"ref")/abs(x_"ref") times 100 "%" $
  $ y(t) = y(0) - 1/(R C) integral_0^t u(tau) dif tau $
  $ W = mat(a, b; c, d) $
  ```
][
  $ R = (10.0 plus.minus 0.1) "kΩ" $
  $ epsilon = abs(x - x_"ref")/abs(x_"ref") times 100 "%" $
  $ y(t) = y(0) - 1/(R C) integral_0^t u(tau) dif tau $
  $ W = mat(a, b; c, d) $
]

複数行の式は `&` で位置をそろえ，`\` で改行します．式にもラベルを付けられます．
#demo[
  ```typst
  $ y & = a x + b \
      & = a (x - x_0) + y_0 $ <eq:model>
  @eq:model を用いて計算する．
  ```
][
  $ y & = a x + b \ & = a (x - x_0) + y_0 $ <eq:model>
  @eq:model を用いて計算する．
]

== 箇条書き・解析コード・参考文献

番号付きリストには `+`，箇条書きには `-` を使います．解析コードはバッククォート3個で囲みます．
````typst
+ 測定条件を設定する．
+ 測定値を表にまとめる．
- 使用機器：機器名を記入
```python
mean = sum(values) / len(values)
```
````

参考文献ファイルは `.bib` または `.yml` を用意し，キーを `@` で引用します．
```typst
先行研究 @reference-key を参考にした．
#bibliography("refs.bib")
```
