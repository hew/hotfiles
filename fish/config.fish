# Load Aliases and Shiz
source ~/.config/fish/aliases.fish

# Load Pyenv
status --is-interactive; and . (pyenv init - | psub)

# Load Rbenv
status --is-interactive ; and . (rbenv init - | psub)
# set PATH $HOME/.rbenv/shims $PATH
# rbenv rehash >/dev/null ^&1

# Set Path to My Custom Executables
set -gx PATH $PATH ~/.config/bin
set -gx PYENV_ROOT ~/.pyenv

# Path Helpers
set -gx KLUE $KLUE ~/kluein/klue
set -gx FIG $FIG ~/.config
set -gx EC $EC ~/.config/nvim/init.vim
# set -gx TODO_DB_PATH $TODO_DB_PATH /User/.todo/todo.json
# set -x -U GOPATH $HOME/go
# set -x -U GOBIN $GOPATH/bin

# set -Ux TERM 'xterm-256color-italic'

set -g fish_user_paths "/usr/local/opt/imagemagick@6/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/bin" $fish_user_paths

# LDFLAGS:  -L/usr/local/opt/imagemagick@6/lib
# CPPFLAGS: -I/usr/local/opt/imagemagick@6/include
# PKG_CONFIG_PATH: /usr/local/opt/imagemagick@6/lib/pkgconfig


# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.fish ]; and . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.fish
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.fish ]; and . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.fish
