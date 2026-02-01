// 理工学基礎実験レポートテンプレート

#let body = "Noto Serif CJK JP"
#let head = "Noto Sans CJK JP"

#let slash_cell(
  dir: "/",
  stroke: 0.5pt,
  inset: 0pt,
  colspan: 1,
  rowspan: 1,
) = table.cell(inset: inset, colspan: colspan, rowspan: rowspan)[
  #box(width: 100%, height: 100%)[
    #line(
      start: if dir == "/" { (0%, 0%) } else { (0%, 100%) },
      end: if dir == "/" { (100%, 100%) } else { (100%, 0%) },
      stroke: stroke,
    )
  ]
]

#let pill(body, pad: 6pt, line: 0.5pt) = box(
  stroke: line,
  inset: pad,
  radius: 100%,
  baseline: 25%,
)[#body]

// 1行の日時レイアウト
#let date_tabw = (y: 5em, m: 3em, d: 3em, h: 3em, min: 3em)
#let date_row(y, m, d, h, min) = table(
  columns: (date_tabw.y, auto, date_tabw.m, auto, date_tabw.d, auto, date_tabw.h, auto, date_tabw.min, auto),
  align: horizon + right,
  stroke: none,
  [#y], [年], [#m], [月], [#d], [日], [#h], [時], [#min], [分],
)

#let report(
  doc,
  title: [理工学基礎実験レポート],
  exp_y: [],
  exp_m: [],
  exp_d: [],
  weekday: [火・ #pill[金]], // 曜日
  ampm: [#pill[午前]・ 午後], // 午前/午後
  subject: [],
  dept: [異世界生活科],
  clazz: [S],
  student_id: [19850325],
  name: [菜月 昴],
  submit: ([], [], [], [], []), // (y,m,d,h,min)
  resubmit: ([], [], [], [], []), // (y,m,d,h,min)
  coexp: (),
  temp: [#slash_cell()],
  humid: [#slash_cell()],
  pressure: [#slash_cell()],
) = {
  // 共通スタイル
  set text(lang: "ja", font: body, size: 11pt)
  show strong: it => {
    set text(font: head, weight: "bold")
    it
  }
  show heading: it => {
    set text(font: head)
    block(below: 1.2em, it)
  }
  show heading.where(level: 1): it => {
    set text(size: 16pt, weight: "bold")
    it
  }
  show heading.where(level: 2): it => {
    set text(size: 13pt, weight: "bold")
    it
  }
  show heading.where(level: 3): it => {
    set text(size: 11pt, weight: "semibold")
    it
  }

  set heading(numbering: "1.1.")
  set table(inset: 6pt)

  // まずは「全部インデント」ルールを入れる
  set par(first-line-indent: (amount: 1em, all: true))

  // 1. ブロック数式の末尾に「ここで数式終わったよ」というマーカーを挿入
  show math.equation: it => {
    if it.block {
      // ブロックのときだけマーカーを付ける
      it + [#[ #[]<eq-end>]]
    } else {
      it
    }
  }
  // #set page(..options)
  set page(
    columns: 1,
    numbering: "1 / 1",
    number-align: center,
  )

  // 2. 段落をフックして，「直前が eq-end ならインデントを消す」
  show par: it => {
    if it.first-line-indent.amount == 0pt {
      return it
    }
    context {
      let eq-end = query(selector(<eq-end>).before(here())).at(-1, default: none)
      if eq-end == none {
        return it
      }
      if eq-end.location().position() != here().position() {
        return it
      }
      let fields = it.fields()
      let body = fields.remove("body")
      par(
        ..fields,
        first-line-indent: 0pt,
        body,
      )
    }
  }

  // タイトル
  align(center)[ #text(size: 20pt)[#title] ]
  v(10mm)

  // 実験日・題目
  table(
    columns: (6em, 1fr),
    rows: (2.5em, 4em),
    align: horizon,
    stroke: 0.5pt,

    [実験日],
    [
      #h(2em) #exp_y 年 #h(2em) #exp_m 月 #h(2em) #exp_d 日
      #h(2em) ( #weekday ) #h(1em) ( #ampm )
    ],

    [実験題目], [#subject],
  )

  v(6mm)

  // 所属・氏名
  block([ #set text(font: head)
    #table(
      columns: (auto, 3fr, auto, 1fr, auto, 2fr),
      rows: (2.5em, 4em),
      align: horizon,
      stroke: 1.5pt,

      [学科], [#dept],
      [クラス], [#clazz],
      [学籍番号], [#student_id],

      [#text(weight: "bold")[報告者氏名]],
      table.cell(colspan: 5)[#text(size: 16pt, weight: "bold")[#name]],
    )
  ])

  v(6mm)

  // 共同実験者
  table(
    columns: (auto, 1fr, 1fr),
    rows: 2.5em,
    align: horizon,
    stroke: 0.5pt,
    table.cell(rowspan: 4)[共同実験者],
    ..coexp,
  )

  v(6mm)

  // 提出日
  table(
    columns: (auto, 1fr),
    rows: 2.5em,
    align: horizon,
    stroke: 0.5pt,

    [レポート提出日], [#date_row(..submit)],
    [レポート再提出日], [#date_row(..resubmit)],
    [], [],
  )

  v(6mm)

  // 室温・湿度・気圧
  table(
    columns: (auto, 16em),
    rows: 2.5em,
    stroke: 0.5pt,
    align: horizon,
    [室温], [#temp],
    [湿度], [#humid],
    [気圧], [#pressure],
  )

  pagebreak()

  doc
}

