## ripgrep

GitHub: https://github.com/BurntSushi/ripgrep

## Description

`ripgrep` (`rg`) is a fast recursive search tool that respects `.gitignore` rules by default. It combines the usability of `ag` with the speed of `grep`, supports regex patterns, and can filter by file type.

## Examples

```bash
# Basic search across files
rg "TODO"

# Regex search
rg "fn\s+\w+\(" src/

# Filter by file type
rg "import" --type ts

# Case-insensitive search
rg -i "error"

# Show context lines around matches
rg -C 3 "panic"

# Search only files matching a glob
rg "config" --glob "*.yaml"
```
