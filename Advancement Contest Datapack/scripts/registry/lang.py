import json
from pathlib import Path
from typing import Any

def insert_trans_key(lang_file: Path, keys: list[str]) -> None:

    # 读取 / 初始化根对象
    if lang_file.exists():
        raw = lang_file.read_text(encoding="utf-8").strip()
        if raw:
            data: Any = json.loads(raw)
        else:
            data = {}
    else:
        data = {}

    if not isinstance(data, dict):
        raise ValueError(f"Language file root must be a JSON object: {lang_file}")

    changed = False

    for key in keys:
        if key not in data:
            data[key] = f"TEXTNOTFOUND"
            changed = True

    # 只有有变更时才写回，避免无意义改动时间戳
    if changed:
        lang_file.parent.mkdir(parents=True, exist_ok=True)
        lang_file.write_text(
            json.dumps(data, ensure_ascii=False, indent=2) + "\n",
            encoding="utf-8"
        )