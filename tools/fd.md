## fd

GitHub: https://github.com/sharkdp/fd

## Description

`fd` is a fast, user-friendly alternative to `find`. It uses sensible defaults (ignores hidden files and `.gitignore` patterns), has an intuitive syntax, and supports regex patterns. Colorized output by default.

## Examples

```bash
# Find files by name
fd readme

# Find files with a specific extension
fd -e md

# Find files in a specific directory
fd -e rs src/

# Find hidden and ignored files too
fd -H -I pattern

# Run a command on each result
fd -e jpg -x convert {} {.}.png
```
