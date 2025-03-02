# Shell
alias c='clear'

# Git
alias ga='g add -A'
alias gs='g status'
alias gp='g push'
alias gc="g commit -m"

# General
alias fman="compgen -c | fzf | xargs man"

# Waybar
alias rw='pkill waybar && hyprctl dispatch exec waybar'

# eza
alias ll='eza -la --color=always --total-size --icons=always --no-permissions --no-user --no-time'

# bat
alias cat='bat'
