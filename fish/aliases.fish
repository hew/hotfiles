# ----- Editor ----- 
alias oni2 '/Applications/Onivim2.app/Contents/MacOS/Oni2'
alias e 'nvim -i NONE'

# ----- XDG_home ----- 
alias ea 'e ~/.config/fish/aliases.fish'
alias ef 'e ~/.config/fish/config.fish'
alias eg 'e ~/.config/git/config'
alias ek 'e ~/.config/kitty/kitty.conf'
alias ev 'e ~/.config/nvim/modules/general.vim'
alias evp 'e ~/.config/nvim/modules/plugins.vim'
alias tc 'e ~/.config/tmux/tmux.conf'
alias fig 'e ~/.config'
alias of 'open ~/.config'
alias ts 'sh ~/.config/tmux/tmux-start'
alias tp 'sh ~/.config/tmux/tmux-new'
alias code_ 'cd ~/Code/'


# ----- Qup Monorepo ----- 
alias mo 'cd ~/Code/Javascript/qup-monorepo'
alias pack 'cd ~/Code/Javascript/qup-monorepo/packages/'
alias qup 'cd ~/Code/Javascript/qup-monorepo/packages/qup'
alias fro 'cd ~/Code/Javascript/qup-monorepo/packages/qup/frontend'
alias gameInit  'cd ~/Code/Javascript/qup-monorepo/packages/qup/amplify/backend/function/gameInit/src/'
alias gameClock 'cd ~/Code/Javascript/qup-monorepo/packages/qup/amplify/backend/function/gameClock/src/'
alias gameMarsh 'cd ~/Code/Javascript/qup-monorepo/packages/qup/amplify/backend/function/gameMarshaller/src/'


# ----- Other Config ----- 
alias eh 'e ~/.hyper.js'
alias ec 'e $HOME/Library/Application\ Support/Code/User/settings.json'

# ----- Program Shortcuts ----- 
alias slack '~/go/bin/slack-term'
alias gat 'gatsby' 

# ----- Sites Shortcuts ----- 
alias work-server 'cd ~/Documents/Work/sul-server'
alias work-client 'cd ~/Documents/Work/sul-client'

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


## ----- Path Stuff ----- 

# Pretty print path
alias path="echo $PATH ^| tr -s ':' '\n'"

# Copy path
alias copy-path='pwd ^| pbcopy'


## ----- Misc ----- 

# Pretty Cat
alias ccat='pygmentize -g'
# alias cat=bat
alias grep='rg'
# alias ef="nvim (rg --files | fzf)"

## ----- Navigation -----

# Quick Jumps
alias ffunc 'cd ~/.config/fish/functions/'
alias sites 'cd ~/Sites'
alias fig 'cd ~/.config/'
alias desk 'cd ~/Desktop'
alias dev 'cd ~/Dev'
alias qu 'cd ~/Code/QUP'

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
# alias agg 'agg --nobreak --nonumbers --noheading . | fzf'
alias ag='ag --path-to-ignore ~/.ignore'

# Delete All .DS_Store files
alias nomore='find ./ -iname ".DS_Store" -delete'

# Open VS Code
alias code "open -a 'Visual Studio Code' ."

# Copy Github Secret
alias gh-key "echo $GHTOKEN | pbcopy"

