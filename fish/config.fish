# Load Aliases and Shiz
source ~/.config/fish/aliases.fish

# Load Rbenv
set PATH $HOME/.rbenv/shims $PATH
rbenv rehash >/dev/null ^&1

# Set Path to My Custom Executables
set -gx PATH $PATH ~/.config/bin
set -gx PYENV_ROOT ~/.pyenv

# Path Helpers
set -gx KLUE $KLUE ~/kluein/klue
set -gx FIG $FIG ~/.config
set -gx EC $EC ~/.config/nvim/init.vim

# set -Ux TERM 'xterm-256color-italic'

set -g fish_user_paths "/usr/local/opt/imagemagick@6/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/bin" $fish_user_paths


# LDFLAGS:  -L/usr/local/opt/imagemagick@6/lib
# CPPFLAGS: -I/usr/local/opt/imagemagick@6/include
# PKG_CONFIG_PATH: /usr/local/opt/imagemagick@6/lib/pkgconfig

