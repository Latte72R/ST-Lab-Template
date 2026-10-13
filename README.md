# 理工学基礎実験レポート Typst テンプレート

図・表・数式を短いコードで書けるTypstで，実験レポートを作ってみませんか．[オンラインエディタ](https://typst.app/)でも始められます．まずはテンプレートの空欄を埋めながら，よく使う書き方を覚えられます．

12本の実験レポートの章立てと理論式を残し，画像は「ここに画像」，表の値は空欄，考察・結論は記入欄にしました．氏名はリゼロの架空の人物，学籍番号は `00000000`，日時・環境測定値は空欄です．元の画像・PDF・実測データは含みません．`preview/` には公開用ソースから生成したPDFを収録しています．参考文献の著者名は出典どおりです．

## 使い方

1. 使う実験のフォルダと [template.typ](./template.typ) を，位置関係を保ってコピーします．
2. 実験の `.typ` を開き，先頭の `report.with(...)` に表紙情報を記入します．
3. 画像枠，表の `[]`，本文の記入欄を自分の内容に置き換えます．画像枠は `image("画像.png", width: 80%)` に変更できます．

[writing-template.typ](./writing-template.typ)（[PDF](./preview/writing-template.pdf)）に，図・表・単位・数式・相互参照・解析コード・参考文献の書き方を，コードと出力を並べてまとめています．必要な例をコピーして使ってください．

| ソース | 実験題目 | PDF |
| --- | --- | --- |
| [A-1](./A-1/A-1.typ) | アナログ演算回路 | [表示](./preview/A-1.pdf) |
| [A-2](./A-2/A-2.typ) | 熱の移動 | [表示](./preview/A-2.pdf) |
| [A-4](./A-4/A-4.typ) | 流体実験 | [表示](./preview/A-4.pdf) |
| [A-5](./A-5/A-5.typ) | 金属の切削加工 | [表示](./preview/A-5.pdf) |
| [B-2](./B-2/B-2.typ) | 偏光 | [表示](./preview/B-2.pdf) |
| [B-4](./B-4/B-4.typ) | フーリエ解析 | [表示](./preview/B-4.pdf) |
| [B-8](./B-8/B-8.typ) | ニューラルネットワーク | [表示](./preview/B-8.pdf) |
| [B-9](./B-9/B-9.typ) | 量子テレポーテーション | [表示](./preview/B-9.pdf) |
| [D-1-1](./D-1-1/D-1-1.typ) | VDT作業における視覚特性 | [表示](./preview/D-1-1.pdf) |
| [D-1-2](./D-1-2/D-1-2.typ) | VDT作業における操作特性 | [表示](./preview/D-1-2.pdf) |
| [D-3](./D-3/D-3.typ) | グラフィカル・データ解析 | [表示](./preview/D-3.pdf) |
| [D-4](./D-4/D-4.typ) | 幾何学的確率 | [表示](./preview/D-4.pdf) |

表の空欄は0を意味しません．実験条件・換算係数・理論式は，自分の実験に合わせて確認してください．D-3の30回分の欄は，`range(30).map(_ => [])` を30個の値の配列に置き換えます．

## PDF生成

Typstと日本語フォント（Noto CJK）を用意し，ルートで実行します．`.tools/typst` に導入した場合も一括生成スクリプトが自動で検出します．外部Typstパッケージへの依存はありません．

```sh
typst compile --root . A-1/A-1.typ A-1/A-1.pdf
python3 scripts/build.py          # 全文書をbuild/へ生成
python3 scripts/check_public.py   # 公開用ソースの検査
```

WindowsのVS CodeでTinymistを入れている場合は，PowerShellで `./scripts/build-windows.ps1` を実行すると，既存のコンパイラで一括生成できます．

Typst 0.15.1で全13文書のPDF生成を確認済みです．12本の章立て・参照先・個人情報・収録ファイルも検査しています．

## Typstを始める・調べる

- [Typstでレポートを書こう！（traP）](https://trap.jp/post/2576/)：特徴と始め方を知りたいときに．
- [Typstドキュメント日本語版](https://typst-jp.github.io/docs/)：図・表・数式の書き方を調べたいときに．
- [mumumu6/typst-template](https://github.com/mumumu6/typst-template)：コードと出力を並べる説明構成を参考にしました．

表紙は [旧テンプレート](https://github.com/Latte72R/ST-Lab-Template) を参考にしています．ライセンスは [MIT](./LICENSE) です．
