"""Compile every report and the editing guide with the Typst CLI."""
from pathlib import Path
import shutil
import subprocess
import sys

root = Path(__file__).resolve().parent.parent
local_typst = root / ".tools" / "typst"
typst = shutil.which("typst") or (
    str(local_typst) if local_typst.is_file() else None
) or shutil.which("tinymist")
if not typst:
    sys.exit("TypstまたはTinymistが見つかりません。Windowsではscripts/build-windows.ps1も使えます。")
output = root / "build"
output.mkdir(exist_ok=True)
sources = sorted(root.glob("[ABD]-*/*.typ")) + [root / "writing-template.typ"]
failures = []
for source in sources:
    result = subprocess.run([
        typst, "compile", "--root", str(root), str(source), str(output / f"{source.stem}.pdf")
    ], cwd=root)
    if result.returncode:
        failures.append(source.relative_to(root))
if failures:
    sys.exit("生成失敗: " + ", ".join(map(str, failures)))
print(f"{len(sources)}文書をbuild/に生成しました。")
