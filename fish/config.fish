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

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.fish ]; and . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.fish
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.fish ]; and . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.fish