# Load Aliases and Shiz
source ~/.config/fish/aliases.fish

set PATH ~/.config/bin/ $PATH

set -Ux EDITOR nvim

# Pyenv
status --is-interactive; and source (pyenv init -|psub)

# Rbenv
# status --is-interactive ; and source (rbenv init - | psub)

# Kitty
# kitty + complete setup fish | source
