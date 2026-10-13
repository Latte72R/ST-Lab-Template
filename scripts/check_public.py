"""Check the public template sources, optionally comparing the private originals.

Usage: python3 scripts/check_public.py [--source /path/to/ST-Lab-Report]
The optional source directory is read only. Identity values are never printed.
This is a content audit, not a replacement for compilation or visual inspection.
"""
import argparse
from pathlib import Path
import re
import sys

root = Path(__file__).resolve().parent.parent
parser = argparse.ArgumentParser()
parser.add_argument("--source", type=Path)
args = parser.parse_args()
reports = sorted(root.glob("[ABD]-*/*.typ"))
errors = []

def check(ok, message):
    if not ok:
        errors.append(message)

def headings(text):
    return re.findall(r"^=+ .+$", text, re.M)

check(len(reports) == 12, "レポート数が12本ではありません")
check((root / "LICENSE").is_file(), "LICENSEがありません")
# Look only at the release source directories; generated build artifacts are excluded.
for folder in [p.parent for p in reports]:
    for p in folder.rglob("*"):
        if p.is_file():
            check(p.suffix in {".typ", ".bib"}, f"公開対象に未確認のファイル: {p.relative_to(root)}")

text_sources = reports + [root / "template.typ", root / "writing-template.typ"]
public_text = "\n".join(p.read_text() for p in text_sources)
for p in text_sources:
    text = p.read_text()
    # Raw code examples in the guide use illustrative filenames, so audit report references only.
    if p in reports:
        check(not re.search(r'\b(?:image|read|csv)\s*\(', text), f"外部データ参照: {p.name}")
        check("PROTECTEDTOKEN" not in text, f"作業用マーカーが残存: {p.name}")
        labels = set(re.findall(r"<([\w:-]+)>", text))
        citations = set()
        for bib in re.findall(r'#bibliography\("([^"]+)"\)', text):
            bibpath = p.parent / bib
            check(bibpath.is_file(), f"参考文献ファイルがありません: {p.name}")
            if bibpath.is_file():
                citations.update(re.findall(r"@\w+\{([^,]+),", bibpath.read_text()))
        for ref in re.findall(r"@([\w:-]+)", text):
            check(ref in labels | citations, f"参照先がありません: {p.name}: {ref}")
        for imp in re.findall(r'#import "([^"]+)"', text):
            check(not imp.startswith("@"), f"外部パッケージへの依存: {p.name}")
            check((p.parent / imp).is_file(), f"import先がありません: {p.name}")
        # Reports' cover fields must remain blank in the public distribution.
        for key, value in re.findall(r"^  (exp_[ymd]|temp|humid|pressure): ([^\n]+)", text, re.M):
            check(value.strip() == "[],", f"表紙の実データが残存: {p.name}: {key}")
        for key, value in re.findall(r"^  (submit|resubmit): ([^\n]+)", text, re.M):
            check(value.strip() == "([], [], [], [], []),", f"日時が残存: {p.name}: {key}")

if args.source:
    source = args.source.expanduser().resolve()
    check(source.is_dir(), "元データのディレクトリがありません")
    private_ids = set()
    for p in reports:
        original = source / p.relative_to(root)
        check(original.is_file(), f"比較元がありません: {p.name}")
        if not original.is_file():
            continue
        old = original.read_text()
        check(headings(old) == headings(p.read_text()), f"章立てが変わっています: {p.name}")
        check(old.count("#figure(") == p.read_text().count("#figure("), f"図表の数が変わっています: {p.name}")
        for coexp in re.findall(r"coexp:\s*\(([\s\S]*?)\),", old):
            private_ids.update(re.findall(r"\[([^\]]+)\]", coexp))
    template = source / "template.typ"
    if template.is_file():
        old = template.read_text()
        private_ids.update(re.findall(r"(?:name|student_id):\s*\[([^\]]+)\]", old))
    # Do not repeat private names/IDs in audit messages or in the public checker itself.
    check(not any(value in public_text for value in private_ids), "元データの氏名または学籍番号が残っています")

if errors:
    print("\n".join(errors), file=sys.stderr)
    sys.exit(1)
print(f"公開用ソースの検査に合格: {len(reports)}本。PDFの組版は別途確認してください。")
