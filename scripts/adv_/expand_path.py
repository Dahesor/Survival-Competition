from typing import Optional
from pathlib import Path
import re

def expand_advancement(registry: Path) -> Optional[Path]:

    # 读取文件行
    lines = registry.read_text(encoding="utf-8").splitlines()

    target_line = None
    for line in lines:
        if line.lstrip(" \t").startswith("advancement:"):
            target_line = line
            break

    if target_line is None:
        return None

    # 提取 advancement:"namespace:path"
    m = re.search(r'advancement\s*:\s*"([^"]+)"', target_line)
    if not m:
        return None

    ns_id = m.group(1).strip()  # namespace:path

    if ":" not in ns_id:
        path_part = ns_id
        namespace = "minecraft"
    else:
        namespace, path_part = ns_id.split(":", 1)

    # 组合为 ./data/<namespace>/tags/recipe/<path>.json
    expanded = Path("./data") / namespace / "advancement" / f"{path_part}.json"
    return (Path.cwd() / expanded).resolve()