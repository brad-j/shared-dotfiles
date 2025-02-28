# Shell
alias c='clear'

# Git
alias ga='git add -A'
alias gs='git status'
alias gp='git push'

function gc () {
  git commit -m "$1"
}

# Waybar
alias rw='pkill waybar && hyprctl dispatch exec waybar'

# eza
alias ll='eza -la --color=always --total-size --icons=always --no-permissions --no-user --no-time'

# bat
alias cat='bat'
