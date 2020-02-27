# Load Aliases and Shiz
source ~/.config/fish/aliases.fish
source $HOME/.cargo/env

set PATH ~/.config/bin/ $PATH
set PATH ~/.local/bin/ $PATH

set PATH ~/.cargo/bin/ $PATH

set -Ux DENO_INSTALL "/Users/hew/.local"
set -Ux PATH "$DENO_INSTALL/bin:$PATH"

set -Ux EDITOR nvim
set -Ux NPM_TOKEN e883e9ec-dbcc-47e3-a127-d9979ba4ebe6

# Pyenv
status --is-interactive; and source (pyenv init -|psub)

# Rbenv
# status --is-interactive ; and source (rbenv init - | psub)

# Kitty (currently unused)
# kitty + complete setup fish | source

# opam configuration
source /Users/hew/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true

# This causes fzf to error out when searching for git checked-in files (?)
# ssh-add -K ~/.ssh/id_rsa
