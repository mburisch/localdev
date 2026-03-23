## eza

GitHub: https://github.com/eza-community/eza

## Description

`eza` is a modern replacement for `ls` written in Rust. It provides sensible defaults, colorized output, Git status integration, tree views, and extended file metadata. It is the maintained successor to `exa`.

## Examples

```bash
# List files with icons and git status
eza --icons --git

# Long listing with human-readable sizes and headers
eza -lh --header

# Recursive tree view (2 levels deep)
eza --tree --level=2

# Show only directories
eza -D

# Sort by modification time, newest first
eza -l --sort=modified --reverse

# Long listing with git status and extended attributes
eza -l --git --extended
```
