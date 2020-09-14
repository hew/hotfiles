# ----- Editor -----
alias e 'nvim -i NONE'
alias code "open -a 'Visual Studio Code' ."

# ----- XDG_home -----
alias ea 'e ~/.config/fish/aliases.fish'
alias ef 'e ~/.config/fish/config.fish'
alias eg 'e ~/.config/git/config'
alias ek 'e ~/.config/kitty/kitty.conf'
alias ev 'e ~/.config/nvim/modules/general.vim'
alias evp 'e ~/.config/nvim/modules/plugins.vim'
alias tc 'e ~/.config/tmux/tmux.conf'
alias fig 'cd ~/.config'

# ----- Other Config -----
alias eh 'e ~/.hyper.js'
alias ec 'e $HOME/Library/Application\ Support/Code/User/settings.json'

## ----- General Unix -----
alias l='ls -ld .?*'
alias ll='ls -1d'
alias md 'mkdir -p'
alias cx 'chmod +x'
alias 'c-x' 'chmod -x'
alias rm 'trash'

## ----- Git -----
alias gs='git status'
alias gl='git log'
alias gf='git fetch'
alias gp='git pull'
alias gc='git commit -m'
alias get-dev='git co dev ; git pull ; git co -'


## ----- Navigation -----

# Quick Jumps
alias sites 'cd ~/Sites'
alias desk 'cd ~/Desktop'
alias work 'cd ~/Code/Javascript/live-show-dashboard'

# Shorthands
alias .. 'cd ..'
alias ... 'cd ../..'
alias .... 'cd ../../..'
alias ..... 'cd ../../../..'

# ----- Misc -----
alias reload 'source ~/.config/fish/config.fish'
alias be 'bundle exec'
alias py-serve='python -m SimpleHTTPServer'
alias mark 'sh ~/.config/fish/functions/b.rb'
alias ag='ag --path-to-ignore ~/.ignore'
alias nomore='find ./ -iname ".DS_Store" -delete'
alias ccat='pygmentize -g'
alias gh-key "echo $GHTOKEN | pbcopy"

