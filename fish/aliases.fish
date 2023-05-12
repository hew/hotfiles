# ----- Editor -----
alias e 'nvim'
alias code "open -a 'Visual Studio Code' ."

# ----- XDG_home -----
alias ea 'e ~/.config/fish/aliases.fish'
alias ef 'e ~/.config/fish/config.fish'
alias eg 'e ~/.config/git/config'
alias ek 'e ~/.config/kitty/kitty.conf'
alias evp 'e ~/.config/nvim/lua'
alias tc 'e ~/.config/tmux/tmux.conf'
alias fig 'cd ~/.config'

# ----- tmux -----
alias tmux 'tmux -f ~/.config/tmux/tmux.conf.local'
alias branch-select 'git branch | fzf-tmux -d 20'

# ----- Other Config -----
alias eh 'e ~/.hyper.js'
alias ec 'e $HOME/Library/Application\ Support/Code/User/settings.json'

## ----- General Unix -----
alias l='ls -ld .?*'
alias ls='exa'
alias find='fd'
alias ll='ls -1d'
alias md 'mkdir -p'
alias cx 'chmod +x'
alias 'c-x' 'chmod -x'
# alias rm 'trash'
alias dev-chrome 'open -n -a /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --args --user-data-dir="/tmp/chrome_dev_test" --disable-web-security'
alias sidekick-start 'rbenv shell 2.7.7 ; bundle exec sidekiq -C config/sidekiq.yml'
alias puma-start 'rbenv shell 2.7.7 ; bundle exec puma -C config/puma.rb'
alias reset-mf-services 'brew services restart elasticsearch-full ; brew services restart redis ; brew services restart postgresql'

## ----- Git -----
alias gs='git status'
alias gl='git log'
alias gf='git fetch'
alias gp='git pull'
alias gc='git commit -m'
alias get-dev='git co dev ; git pull ; git co -'
alias update-commit='git au ; git commit --amend --no-edit'


## ----- Ember -----
alias ember 'yarn ember'
alias et='ember test'
alias es='ember serve'
alias eb='ember build'
alias er='rm -fr dist; rm -fr node_modules; yarn install'
alias ren='cd ~/Code/MasterFox/clients/renard'
alias arc='cd ~/Code/MasterFox/clients/arctic-fox'
alias swft='cd ~/Code/MasterFox/clients/swift-fox'
alias star='cd ~/Code/MasterFox/clients/star-fox'

## ----- Navigation -----

# Quick Jumps
alias sites 'cd ~/Sites'
alias desk 'cd ~/Desktop'
alias work 'cd ~/Code/Masterfox'

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
alias gh-key "echo $GHTOKEN | pbcopy"
alias gl-key "echo $GITLAB_KEY | pbcopy"
# alias cat='pygmentize -g'

