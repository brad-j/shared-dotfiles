# Shell
alias c='clear'
alias n='nvim'
alias fman='compgen -c | fzf | xargs man'

# Zellij
alias zj='zellij'

# Git
alias ga='g add -A'
alias gs='g status'
alias gp='g push'
alias gc="g commit -m"

# OpenTofu
alias t='tofu'

# pnpm
alias p='pnpm'
alias pd='pnpm dev'

# k3s / k8s
alias k='kubectl'
alias ktx='k config get-contexts'
alias kname='k config set-context --current --namespace'
alias knameget='k config view --minify | grep namespace:'

# Waybar
alias rw='pkill waybar && hyprctl dispatch exec waybar'

# eza
alias ll='eza -la --color=always --icons=always --no-user --no-time --binary'
alias lt='eza -T --color=always --icons=always --no-user --no-time'

# bat
alias cat='bat'

function ssha {
  eval "$(ssh-agent -s)" && ssh-add ~/.ssh/$1
}

# Weather
alias weather='curl wttr.in'

# Obsidian
alias pvault='z /Volumes/home/obsidian/personal-vault/'
alias wvault='z /Volumes/home/obsidian/work-vault/'
