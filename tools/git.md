## git

GitHub: https://github.com/git/git

Homepage: https://git-scm.com

The distributed version control system. These are the global settings worth having — they make everyday git safer, quieter, and easier to read. Set them once in `~/.gitconfig`.

### Recommended settings

```ini
[init]
	# Name the initial branch "main" instead of "master"
	defaultBranch = main
	# Store refs in the reftable format (faster, atomic ref updates; Git 2.45+)
	defaultRefFormat = reftable

[push]
	# First push auto-creates the upstream branch — no more
	# "git push --set-upstream origin <branch>"
	autoSetupRemote = true

[fetch]
	# Delete local remote-tracking refs whose remote branch is gone
	prune = true

[pull]
	# Rebase local commits on top of the fetched branch instead of
	# creating a merge commit — keeps history linear
	rebase = true

[rebase]
	# Stash/unstash dirty changes automatically around a rebase
	autoStash = true
	# Honor "fixup!"/"squash!" commit prefixes during interactive rebase
	autosquash = true
	# Update dependent local branches when rebasing a stack (Git 2.38+)
	updateRefs = true

[rerere]
	# "Reuse recorded resolution" — remember how you resolved a conflict
	# and replay it automatically next time it recurs
	enabled = true

[merge]
	# Three-way conflict markers (base + both sides), sorted for readability
	conflictStyle = zdiff3

[diff]
	# Better diff quality than the default Myers algorithm
	algorithm = histogram
	# Highlight moved lines distinctly from added/removed ones
	colorMoved = zebra
	# Use i/w/c/o prefixes (index/working/commit/object) instead of a/b
	mnemonicPrefix = true

[commit]
	# Show the full diff in the commit-message editor for review
	verbose = true

[branch]
	# List branches most-recently-committed first
	sort = -committerdate

[tag]
	# Sort tags by semantic version rather than lexically (v2 before v10)
	sort = version:refname

[column]
	# Column-format output (branch/tag/status lists) when it fits the terminal
	ui = auto

[core]
	# Your editor of choice for commit messages, rebases, etc.
	editor = hx
```

### Per-directory config

Use `includeIf` to apply a different identity or settings inside a directory tree — e.g. a work email for repos under `~/work/`:

```ini
[includeIf "gitdir:~/work/"]
	path = ~/.gitconfig-work
```

```ini
# ~/.gitconfig-work
[user]
	email = you@company.com
```

### Handy commands

```bash
# Inspect the effective config and where each value comes from
git config --list --show-origin

# Set a value globally
git config --global pull.rebase true

# Edit the global config in your editor
git config --global --edit
```
