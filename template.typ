// 共通の表紙と組版。表紙の初期値は記入例です。
#let body = "Noto Serif CJK JP"
#let head = "Noto Sans CJK JP"

// 画像ファイルなしでコンパイルできる記入枠。
// 自分の画像を入れるときは image-placeholder(...) を image("画像.png", width: 80%) に置換。
#let image-placeholder(width: 80%, height: 45mm) = block(
  width: width, height: height, stroke: 0.6pt + gray,
  fill: luma(97%), inset: 6pt,
)[#align(center + horizon)[ここに画像]]

// 量子状態 |ψ⟩。外部パッケージを使わず記述できる。
#let ket(x) = math.lr($|#x ⟩$)

#let slash_cell(
  dir: "/", stroke: 0.5pt, inset: 0pt, colspan: 1, rowspan: 1,
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
  stroke: line, inset: pad, radius: 100%, body,
)
#let date_row(y, m, d, h, min) = table(
  columns: (5em, auto, 3em, auto, 3em, auto, 3em, auto, 3em, auto),
  align: horizon + right, stroke: none,
  [#y], [年], [#m], [月], [#d], [日], [#h], [時], [#min], [分],
)

#let report(
  doc,
  title: [理工学基礎実験レポート],
  exp_y: 2026, exp_m: 4, exp_d: 3,
  weekday: [火・ #pill[金]], ampm: [#pill[午前]・ 午後],
  subject: [], dept: [異世界工学科], clazz: [A], student_id: [00000000],
  name: [菜月 昴],
  submit: (2026, 4, 10, 12, 0), resubmit: (2026, 4, 17, 12, 0),
  coexp: ([エミリア], [レム], [ラム]),
  temp: [25 °C], humid: [50 %], pressure: [1013 hPa],
) = {
  set text(lang: "ja", font: body, size: 11pt)
  set page(paper: "a4", numbering: "1 / 1", number-align: center)
  set par(first-line-indent: 1em, justify: true)
  set heading(numbering: "1.1.")
  set table(inset: 6pt)
  show strong: set text(font: head, weight: "bold")
  show heading: it => {
    set text(font: head)
    block(below: 1.2em, it)
  }
  show heading.where(level: 1): set text(size: 16pt, weight: "bold")
  show heading.where(level: 2): set text(size: 13pt, weight: "bold")
  show heading.where(level: 3): set text(size: 11pt, weight: "semibold")

  align(center)[#text(size: 20pt)[#title]]
  v(10mm)
  table(
    columns: (6em, 1fr), rows: (2.5em, 4em),
    align: horizon, stroke: 0.5pt,
    [実験日], [
      #h(2em) #exp_y 年 #h(2em) #exp_m 月 #h(2em) #exp_d 日
      #h(2em) (#weekday) #h(1em) (#ampm)
    ],
    [実験題目], [#subject],
  )
  v(6mm)
  table(
    columns: (auto, 3fr, auto, 1fr, auto, 2fr),
    rows: (2.5em, 4em), align: horizon, stroke: 1.5pt,
    [学科], [#dept], [クラス], [#clazz], [学籍番号], [#student_id],
    [報告者氏名], table.cell(colspan: 5)[#text(size: 16pt, weight: "bold")[#name]],
  )
  v(6mm)
  // 共同実験者が増えても罫線が崩れないよう，2列単位で空欄を補う。
  let co-rows = calc.max(4, calc.ceil(coexp.len() / 2))
  let co-cells = coexp + range(co-rows * 2 - coexp.len()).map(_ => [])
  table(
    columns: (auto, 1fr, 1fr), rows: 2.5em,
    align: horizon, stroke: 0.5pt,
    table.cell(rowspan: co-rows)[共同実験者], ..co-cells,
  )
  v(6mm)
  table(
    columns: (auto, 1fr), rows: 2.5em, align: horizon, stroke: 0.5pt,
    [レポート提出日], [#date_row(..submit)],
    [レポート再提出日], [#date_row(..resubmit)], [], [],
  )
  v(6mm)
  table(
    columns: (auto, 16em), rows: 2.5em, align: horizon, stroke: 0.5pt,
    [室温], [#temp], [湿度], [#humid], [気圧], [#pressure],
  )
  pagebreak()
  doc
}
