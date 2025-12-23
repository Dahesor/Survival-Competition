import json
from pathlib import Path
from typing import Any

def duplicate_adv(src_path: Path) -> Path:
    if not src_path.exists() or not src_path.is_file():
        raise FileNotFoundError(f"Source JSON not found: {src_path}")

    data: Any = json.loads(src_path.read_text(encoding="utf-8"))
    if not isinstance(data, dict):
        raise ValueError(f"JSON root must be an object: {src_path}")

    # Build destination: foo/this.json -> foo/this/final.json
    dest_dir = src_path.parent / src_path.stem
    dest_dir.mkdir(parents=True, exist_ok=True)
    dest_path = dest_dir / "final.json"

    # ---- modifications ----
    data["criteria"] = {
        "i": {
            "trigger": "impossible"
        }
    }
    if "requirements" in data:
        data.pop("requirements", None)
    if "rewards" in data:
        data.pop("rewards", None)

    if "parent" in data and isinstance(data["parent"], str):
        data["parent"] = data["parent"] + "/final"

    # ---- modify display.title ----
    display = data.get("display")
    if isinstance(display, dict) and "title" in display:
        original = display["title"]
        display["title"] = {
            "translate": "task.first",
            "color": "white",
            "with": [original]
        }
        display["show_toast"] = False
        display["announce_to_chat"] = False

    # Write new file
    dest_path.write_text(
        json.dumps(data, ensure_ascii=False, indent=2) + "\n",
        encoding="utf-8"
    )

    return dest_path