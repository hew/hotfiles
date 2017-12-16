# ----- Editing ----- 

# Editor
alias e 'nvim'

# Quick edits
alias ea 'e ~/.config/fish/aliases.fish'
alias ef 'e ~/.config/fish/config.fish'
alias eg 'e ~/.config/git/config'
alias ev 'e ~/.config/nvim/init.vim'
alias tc 'e ~/.config/tmux/tmux.conf'
alias eh 'e ~/.hyper.js'
alias ec 'e $HOME/Library/Application\ Support/Code/User/settings.json'
alias wik 'e ~/vimwiki/index.wiki'

## ----- CLI ----- 
alias gat 'gatsby' 

## ----- General Unix ----- 
alias l='ls -ld .?*'
alias ll='ls -1d'
alias md 'mkdir -p'
alias cx 'chmod +x'
alias 'c-x' 'chmod -x'


## ----- Git ----- 
alias gs='git status'
alias gl='git log'
alias gf='git fetch'
alias get-dev='git co dev ; git pull ; git co -'


# Pretty print path
alias path="echo $PATH ^| tr -s ':' '\n'"

# Copy path
alias pathc='pwd ^| pbcopy'

# Pretty Cat
alias ccat='pygmentize -g'


## ----- Navigation -----

# Quick Jumps
alias ffunc 'cd ~/.config/fish/functions/'
alias sites 'cd ~/Sites'
alias fig 'cd ~/.config/'
alias desk 'cd ~/Desktop'
alias dev 'cd ~/Dev'
alias klue 'cd ~/kluein/klue'

# Shorthands
alias cd.. 'cd ..'
alias .. 'cd ..'
alias ... 'cd ../..'
alias .... 'cd ../../..'
alias ..... 'cd ../../../..'

# Bookmarks
alias mark 'sh ~/.config/fish/functions/b.rb'


# ----- Misc ----- 

# Quick Source
alias reload 'source ~/.config/fish/config.fish'

# Ruby
alias be 'bundle exec'

# HTTP 
alias py-serve='python -m SimpleHTTPServer'
# alias serve='live-server .'

# Yarn / Npm / etc 
alias yi 'yarn install'
alias sk './bin/webpack-dev-server'

# Search & Stuff
alias findpid="ps axww -o pid,user,%cpu,%mem,start,time,command ^| selecta ^| sed 's/^ *//' ^| cut -f1 -d' '"
alias agg 'ag --nobreak --nonumbers --noheading . | fzf'

# Delete All .DS_Store files
alias nomore='find ./ -iname ".DS_Store" -delete'

# Open VS Code
alias code "open -a 'Visual Studio Code' ."

# Copy Github Secret
alias gh-key "echo $GHTOKEN | pbcopy"

