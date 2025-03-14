# Shell
alias c='clear'
alias n='nvim'
alias fman="compgen -c | fzf | xargs man"

# Git
alias ga='g add -A'
alias gs='g status'
alias gp='g push'
alias gc="g commit -m"

# OpenTofu
alias t='tofu'

# k3s
alias k='kubectl'
alias ktx='k config get-contexts'

# Waybar
alias rw='pkill waybar && hyprctl dispatch exec waybar'

# eza
alias ll='eza -la --color=always --icons=always --no-filesize --no-user --no-time'

# bat
alias cat='bat'

function ssha {
  eval "$(ssh-agent -s)" && ssh-add ~/.ssh/$1
}

# Weather
alias weather='curl wttr.in'
