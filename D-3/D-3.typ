// 一部の情報を伏せた実験レポートの記入例である．
#import "../template.typ": report, image-placeholder

#show: doc => report.with(
  exp_y: 2026,
  exp_m: 4,
  exp_d: 3,
  subject: [グラフィカル・データ解析],
  submit: (2026, 4, 10, 12, 0),
)(doc)

= 目的

本実験の目的は,実際の実験に置いて作成された実験データを視覚的に分析し,得られた結果を考察する力を養うことである．

= 実験結果・考察

== 課題1

測定結果と考察を記入する．

#figure(
  image-placeholder(width: 100%),
  caption: [元データと対数変換後データのヒストグラム],
)

#figure(
  table(
    columns: 5,
    table.header(
      table.cell(rowspan: 2)[], table.cell(colspan: 2)[歪度],
      table.cell(rowspan: 2)[符号の変化], table.cell(rowspan: 2)[絶対値の比較],
      [元データ], [対数変換後],
    ),
    [1], [0], [0], [], [],
    [2], [0], [0], [], [],
    [3], [0], [0], [], [],
    [4], [0], [0], [], [],
    [5], [0], [0], [], [],
    [6], [0], [0], [], [],
    [7], [0], [0], [], [],
    [8], [0], [0], [], [],
    [9], [0], [0], [], [],
    [10], [0], [0], [], [],
  ),
  caption: [元データと対数変換後データの歪度],
  supplement: [表],
  kind: table,
)

#figure(
  image-placeholder(width: 100%),
  caption: [元データと対数変換後データの散布図],
)

== 課題2

測定結果と考察を記入する．

// Typst：複数行の式は & で位置をそろえ，\ で改行する。
$ f_lambda(x) = cases((x^lambda - 1)/lambda & "if" lambda != 0, log x & "if" lambda = 0) $

#figure(
  image-placeholder(width: 90%),
  caption: [ボックスコックス変換のヒストグラム],
)

#figure(
  image-placeholder(width: 90%),
  caption: [ボックスコックス変換のヒストグラム],
)

== 課題3

測定結果と考察を記入する．

#figure(
  image-placeholder(width: 100%),
  caption: [相関係数の変化による散布図の比較],
)

== 課題4

測定結果と考察を記入する．

#figure(
  grid(columns: 3, gutter: 1em,
    table(
    columns: 3,
    table.header([], [真の値], [推定値]),
    [1], [0], [0],
    [2], [0], [0],
    [3], [0], [0],
    [4], [0], [0],
    [5], [0], [0],
    [6], [0], [0],
    [7], [0], [0],
    [8], [0], [0],
    [9], [0], [0],
    [10], [0], [0],
  ),
    table(
    columns: 3,
    table.header([], [真の値], [推定値]),
    [1], [0], [0],
    [2], [0], [0],
    [3], [0], [0],
    [4], [0], [0],
    [5], [0], [0],
    [6], [0], [0],
    [7], [0], [0],
    [8], [0], [0],
    [9], [0], [0],
    [10], [0], [0],
  ),
    table(
    columns: 3,
    table.header([], [真の値], [推定値]),
    [1], [0], [0],
    [2], [0], [0],
    [3], [0], [0],
    [4], [0], [0],
    [5], [0], [0],
    [6], [0], [0],
    [7], [0], [0],
    [8], [0], [0],
    [9], [0], [0],
    [10], [0], [0],
  )
  ),
  caption: [相関係数の推定],
  supplement: [表],
  kind: table,
)

#figure(
  image-placeholder(width: 100%),
  caption: [真の相関係数と推定値の散布図],
)

== 課題5

測定結果と考察を記入する．

#figure(
  block[
    #for displacement in (1, 2) [
      ずれの大きさ＝#displacement
      #table(
        columns: (auto,) + (1fr,) * 30, inset: 2pt,
        ..(([予想],) + range(30).map(_ => [0])),
        ..(([真値],) + range(30).map(_ => [0])),
        ..(([正否],) + range(30).map(_ => [])),
      )
    ]
  ],
  caption: [パターン(1, 1, 1, 1, 1, 1)の判別結果],
  supplement: [表],
  kind: table,
)

#figure(
  block[
    #grid(columns: 2, gutter: 1em,
      ..(1, 2).map(displacement => table(
        columns: 5,
        table.header(
          table.cell(colspan: 2, rowspan: 2)[ずれ #displacement],
          table.cell(colspan: 2)[予想結果], [],
          [1], [2], [計],
        ),
        table.cell(rowspan: 2)[真の群], [1], [0], [0], [0],
        [2], [0], [0], [0],
      )),
    )
    ずれの大きさと誤判別率（%）
    #table(
    columns: 4,
    table.header([], [0], [1], [2]),
    [1群], [0], [0], [0],
    [2群], [0], [0], [0],
    [全体], [0], [0], [0],
  )
  ],
  caption: [パターン(1, 1, 1, 1, 1, 1)でのずれの大きさと誤判別率],
  supplement: [表],
  kind: table,
)

#figure(
  image-placeholder(width: 50%),
  caption: [パターン(1, 1, 1, 1, 1, 1)でのずれの大きさと誤判別率],
)

#figure(
  block[
    #for displacement in (1, 2) [
      ずれの大きさ＝#displacement
      #table(
        columns: (auto,) + (1fr,) * 30, inset: 2pt,
        ..(([予想],) + range(30).map(_ => [0])),
        ..(([真値],) + range(30).map(_ => [0])),
        ..(([正否],) + range(30).map(_ => [])),
      )
    ]
  ],
  caption: [パターン(1, 1, 0, 1, 1, 0)の判別結果],
  supplement: [表],
  kind: table,
)

#figure(
  block[
    #grid(columns: 2, gutter: 1em,
      ..(1, 2).map(displacement => table(
        columns: 5,
        table.header(
          table.cell(colspan: 2, rowspan: 2)[ずれ #displacement],
          table.cell(colspan: 2)[予想結果], [],
          [1], [2], [計],
        ),
        table.cell(rowspan: 2)[真の群], [1], [0], [0], [0],
        [2], [0], [0], [0],
      )),
    )
    ずれの大きさと誤判別率（%）
    #table(
    columns: 4,
    table.header([], [0], [1], [2]),
    [1群], [0], [0], [0],
    [2群], [0], [0], [0],
    [全体], [0], [0], [0],
  )
  ],
  caption: [パターン(1, 1, 0, 1, 1, 0)でのずれの大きさと誤判別率],
  supplement: [表],
  kind: table,
)

#figure(
  image-placeholder(width: 50%),
  caption: [パターン(1, 1, 0, 1, 1, 0)でのずれの大きさと誤判別率],
)

#figure(
  block[
    #for displacement in (1, 2) [
      ずれの大きさ＝#displacement
      #table(
        columns: (auto,) + (1fr,) * 30, inset: 2pt,
        ..(([予想],) + range(30).map(_ => [0])),
        ..(([真値],) + range(30).map(_ => [0])),
        ..(([正否],) + range(30).map(_ => [])),
      )
    ]
  ],
  caption: [パターン(1, 0, 0, 1, 0, 0)の判別結果],
  supplement: [表],
  kind: table,
)

#figure(
  block[
    #grid(columns: 2, gutter: 1em,
      ..(1, 2).map(displacement => table(
        columns: 5,
        table.header(
          table.cell(colspan: 2, rowspan: 2)[ずれ #displacement],
          table.cell(colspan: 2)[予想結果], [],
          [1], [2], [計],
        ),
        table.cell(rowspan: 2)[真の群], [1], [0], [0], [0],
        [2], [0], [0], [0],
      )),
    )
    ずれの大きさと誤判別率（%）
    #table(
    columns: 4,
    table.header([], [0], [1], [2]),
    [1群], [0], [0], [0],
    [2群], [0], [0], [0],
    [全体], [0], [0], [0],
  )
  ],
  caption: [パターン(1, 0, 0, 1, 0, 0)でのずれの大きさと誤判別率],
  supplement: [表],
  kind: table,
)

#figure(
  image-placeholder(width: 50%),
  caption: [パターン(1, 0, 0, 1, 0, 0)でのずれの大きさと誤判別率],
)

#figure(
  block[
    #for displacement in (1, 2) [
      ずれの大きさ＝#displacement
      #table(
        columns: (auto,) + (1fr,) * 30, inset: 2pt,
        ..(([予想],) + range(30).map(_ => [0])),
        ..(([真値],) + range(30).map(_ => [0])),
        ..(([正否],) + range(30).map(_ => [])),
      )
    ]
  ],
  caption: [パターン(1, 1, -1, 1, 1, -1)の判別結果],
  supplement: [表],
  kind: table,
)

#figure(
  block[
    #grid(columns: 2, gutter: 1em,
      ..(1, 2).map(displacement => table(
        columns: 5,
        table.header(
          table.cell(colspan: 2, rowspan: 2)[ずれ #displacement],
          table.cell(colspan: 2)[予想結果], [],
          [1], [2], [計],
        ),
        table.cell(rowspan: 2)[真の群], [1], [0], [0], [0],
        [2], [0], [0], [0],
      )),
    )
    ずれの大きさと誤判別率（%）
    #table(
    columns: 4,
    table.header([], [0], [1], [2]),
    [1群], [0], [0], [0],
    [2群], [0], [0], [0],
    [全体], [0], [0], [0],
  )
  ],
  caption: [パターン(1, 1, -1, 1, 1, -1)でのずれの大きさと誤判別率],
  supplement: [表],
  kind: table,
)

#figure(
  image-placeholder(width: 50%),
  caption: [パターン(1, 1, -1, 1, 1, -1)でのずれの大きさと誤判別率],
)

#figure(
  block[
    #for displacement in (1, 2) [
      ずれの大きさ＝#displacement
      #table(
        columns: (auto,) + (1fr,) * 30, inset: 2pt,
        ..(([予想],) + range(30).map(_ => [0])),
        ..(([真値],) + range(30).map(_ => [0])),
        ..(([正否],) + range(30).map(_ => [])),
      )
    ]
  ],
  caption: [パターン(1, -1, 1, -1, 1, -1)の判別結果],
  supplement: [表],
  kind: table,
)

#figure(
  block[
    #grid(columns: 2, gutter: 1em,
      ..(1, 2).map(displacement => table(
        columns: 5,
        table.header(
          table.cell(colspan: 2, rowspan: 2)[ずれ #displacement],
          table.cell(colspan: 2)[予想結果], [],
          [1], [2], [計],
        ),
        table.cell(rowspan: 2)[真の群], [1], [0], [0], [0],
        [2], [0], [0], [0],
      )),
    )
    ずれの大きさと誤判別率（%）
    #table(
    columns: 4,
    table.header([], [0], [1], [2]),
    [1群], [0], [0], [0],
    [2群], [0], [0], [0],
    [全体], [0], [0], [0],
  )
  ],
  caption: [パターン(1, -1, 1, -1, 1, -1)でのずれの大きさと誤判別率],
  supplement: [表],
  kind: table,
)

#figure(
  image-placeholder(width: 50%),
  caption: [パターン(1, -1, 1, -1, 1, -1)でのずれの大きさと誤判別率],
)
