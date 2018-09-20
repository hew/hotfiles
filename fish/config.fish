# Load Aliases and Shiz
source ~/.config/fish/aliases.fish
# source ~/.config/fish/variables.fish
# source ~/.config/fish/sensitive.fish

set PATH ~/.config/bin/ $PATH

# Pyenv
status --is-interactive; and source (pyenv init -|psub)

# Rbenv
# status --is-interactive ; and source (rbenv init - | psub)

