
# env vars
export BUN_INSTALL="$HOME/.bun"

# Editor
export EDITOR=micro

# Homebrew
eval $(/opt/homebrew/bin/brew shellenv)

# Aliases
alias ll='eza -agl'
alias y='yazi'

# Keybindings (cat -v)
bindkey "^[[3;3~" kill-word       # opt + delete
bindkey "^[[3;9~" kill-line       # cmd + delete
bindkey "^[[H" beginning-of-line  # home
bindkey "^[[F" end-of-line        # end


# Completions
fpath=($HOME/.zsh/completions $fpath)
autoload -Uz compinit
compinit


# Prompt
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '(%b)'
setopt prompt_subst

## username: path (git branch) 
export PS1='%F{blue}%n%f: %F{green}%~%f %F{yellow}${vcs_info_msg_0_}%f %# '

# History search using fzf
source <(fzf --zsh)


# Path
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH="$HOME/.local/bin:$HOME/.antigravity/antigravity/bin:$PATH"
