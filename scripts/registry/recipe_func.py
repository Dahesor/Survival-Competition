from pathlib import Path

def write_recipe_func(registry: Path, namespace: str, suffix: str):
    name_give = f"give{suffix}:"
    name_take = f"take{suffix}:"
    lines = registry.read_text(encoding="utf-8").splitlines(keepends=True)

    for i, line in enumerate(lines):
        stripped = line.lstrip(" \t")
        if stripped.startswith(name_give):
            lines[i] = f'        {name_give}"{namespace}/give",\\\n'
        elif stripped.startswith(name_take):
            lines[i] = f'        {name_take}"{namespace}/take",\\\n'
    registry.write_text("".join(lines), encoding="utf-8")