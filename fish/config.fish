# Load Aliases and Shiz
source ~/.config/fish/aliases.fish

set PATH ~/.config/bin/ $PATH
set PATH ~/.local/bin/ $PATH
set PATH ~/.cargo/bin $PATH
set PATH /opt/homebrew/opt/openjdk/bin $PATH
set PATH "$VOLTA_HOME/bin" $PATH

set -gx PUPPETEER_SKIP_CHROMIUM_DOWNLOAD true
set -gx PUPPETEER_EXECUTABLE_PATH `which chromium`
set -gx VOLTA_HOME "$HOME/.volta"
set -gx OBJC_DISABLE_INITIALIZE_FORK_SAFETY YES 
set -gx ES_JAVA_HOME "/opt/homebrew/Cellar/openjdk/20.0.1/libexec/openjdk.jdk/Contents/Home"

eval "$(/opt/homebrew/bin/brew shellenv)"

# Helper for finding files
function rgvim
    set file_line (rg --color=always --line-number --no-heading $argv | fzf --ansi)
    if test -n "$file_line"
        set file (echo "$file_line" | cut -d ':' -f 1)
        set line (echo "$file_line" | cut -d ':' -f 2)
        nvim +$line $file
    end
end
