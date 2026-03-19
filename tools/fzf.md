## fzf

GitHub: https://github.com/junegunn/fzf
Homepage: https://junegunn.github.io/fzf/

## Description

`fzf` is a general-purpose command-line fuzzy finder. It reads from stdin or a file list, lets you interactively filter and select entries, and outputs the selection. Integrates with shell keybindings (`Ctrl-R` for history, `Ctrl-T` for files, `Alt-C` for directories).

## Examples

```bash
# Fuzzy-find a file in the current directory
fzf

# Pipe any list into fzf for interactive selection
git branch | fzf

# Preview file contents while selecting
fzf --preview 'cat {}'

# Use with fd for better file listing
fd --type f | fzf

# Open selected file in an editor
vim $(fzf)

# Multi-select with tab
fzf --multi
```
