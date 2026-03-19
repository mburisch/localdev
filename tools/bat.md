## bat

GitHub: https://github.com/sharkdp/bat

## Description

`bat` is a `cat` clone with syntax highlighting, Git integration, and automatic line numbering. It respects `.gitignore` and can show file diffs. Supports a wide range of languages and integrates with other tools as a pager.

## Examples

```bash
# View a file with syntax highlighting and line numbers
bat src/main.rs

# Show specific line range
bat --line-range 10:20 config.yaml

# Show changes compared to git index
bat --diff README.md

# Plain output (no decorations), useful for piping
bat --plain data.json | jq .

# View multiple files at once
bat src/*.ts
```
