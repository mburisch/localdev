# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a documentation repository cataloging local development CLI tools. Each tool has a markdown file organized by category, containing its GitHub source link, a brief description, and optional usage examples.

## Structure

- `tools/` — General-purpose CLI tools (bat, btop, fd, fzf, ripgrep, yazi, etc.)
- `coding/` — Development-focused tools (biome, bun, ruff, uv, etc.)
- `terminal/` — Terminal emulators and shell config (ghostty, zsh, cmux); may contain companion config subdirs alongside the `.md` file
- `agents/` — Actual scripts/assets (not tool docs), e.g. `agents/claude/statusline-command.sh`

## Conventions

- One file per tool, named `<toolname>.md` in lowercase
- Each file starts with the tool name as an h2 heading, followed by its GitHub link
- Description and example blocks are optional but encouraged
- Examples use fenced bash code blocks with comments explaining each command
- When adding or renaming a tool, update the matching category table in `README.md` (Tools / Coding / Terminal) so it stays in sync before pushing
