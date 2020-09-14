# Load Aliases and Shiz
source ~/.config/fish/aliases.fish
source $HOME/.cargo/env

set DENO_INSTALL "/Users/hew/.local"

set PATH ~/.config/bin/ $PATH
set PATH ~/.local/bin/ $PATH
set PATH ~/go/bin/ $PATH
set PATH "$DENO_INSTALL/bin:$PATH"
set PATH ~/.cargo/bin/ $PATH

# Pyenv
status --is-interactive; and source (pyenv init -|psub)

# Rbenv
# status --is-interactive ; and source (rbenv init - | psub)

# opam configuration
source /Users/hew/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true

# This causes fzf to error out when searching for git checked-in files (?)
# ssh-add -K ~/.ssh/id_rsa
