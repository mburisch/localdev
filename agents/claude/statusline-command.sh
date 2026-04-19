#!/bin/sh
input=$(cat)
cwd=$(echo "$input" | jq -r '.workspace.current_dir')
context_limit=$(echo "$input" | jq -r '.context_window.context_window_size // 0')
context_pct=$(echo "$input" | jq -r '.context_window.used_percentage // 0')
session_pct=$(echo "$input" | jq -r '.rate_limits.five_hour.used_percentage // 0')
tokens=$(( context_limit * context_pct / 100 ))

short_cwd="${cwd/#$HOME/~}"
branch=$(GIT_OPTIONAL_LOCKS=0 git -C "$cwd" symbolic-ref --short HEAD 2>/dev/null)

fmt() {
  n=$1
  if [ "$n" -ge 1000 ]; then
    awk -v n="$n" 'BEGIN { printf "%.1fk", n/1000 }' | sed 's/\.0k/k/'
  else
    printf "%s" "$n"
  fi
}

green='\033[32m'; yellow='\033[33m'; cyan='\033[36m'; reset='\033[0m'

out="${green}${short_cwd}${reset}"
[ -n "$branch" ] && out="$out ${yellow}(${branch})${reset}"
out="$out ${cyan}[$(fmt "$tokens")/$(fmt "$context_limit")] - "$session_pct"%${reset}"
printf "%b" "$out"
