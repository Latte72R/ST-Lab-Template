# 理工学基礎実験レポート Typst テンプレート

理工学基礎実験レポート向けのTypstテンプレートです．一部の情報を伏せた記入例を収録しています．

## 使い方

編集には，VS Code拡張の [Tinymist Typst](https://marketplace.visualstudio.com/items?itemName=myriad-dreamin.tinymist) を推奨します．日本語フォントはNoto Serif CJK JPとNoto Sans CJK JPを使用します．

1. 実験のフォルダと [template.typ](./template.typ) を，位置関係を保ってコピーします．
2. VS Codeでフォルダを開き，実験の `.typ` を編集します．表紙は先頭の `report.with(...)` で指定します．
3. コマンドパレットの `Typst Preview` でプレビューを開き，`Typst Export PDF` でPDFを出力します．

[writing-template.typ](./writing-template.typ)（[PDF](./preview/writing-template.pdf)）に，図・表・数式・単位・相互参照・解析コード・参考文献の書き方をまとめています．

## 実験別テンプレート

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

## コマンドでのPDF生成

Typstをインストールした場合は，リポジトリのルートで次のコマンドを実行できます．

```sh
typst compile --root . A-1/A-1.typ A-1/A-1.pdf
```

## 参考資料

- [Typstでレポートを書こう！（traP）](https://trap.jp/post/2576/)：Typstの特徴と導入方法の解説です．
- [Typstドキュメント日本語版](https://typst-jp.github.io/docs/)：記法と機能の説明です．
- [mumumu6/typst-template](https://github.com/mumumu6/typst-template)：書き方ガイドの構成を参考にしています．

ライセンスは [MIT](./LICENSE) です．
