
# setting cargo 
source $HOME/.cargo/env
export PATH="$HOME/.cargo/bin:$PATH"
export RUST_SRC_PATH="/Users/suyinrong/.rustup/toolchains/stable-x86_64-apple-darwin/lib/rustlib/src/rust/src"

# setting  homebrew 
export PATH="/opt/homebrew/bin/:$PATH"

# setting proxy
export http_proxy="http://localhost:15236"
export https_proxy="http://localhost:15236"

# setting startship
eval "$(starship init zsh)"

# setting exa
if [ "$(command -v exa)" ]; then
    unalias -m 'll'
    unalias -m 'l'
    unalias -m 'la'
    unalias -m 'ls'
    alias ls='exa -G  --color auto --icons -a -s type'
    alias ll='exa -l --color always --icons -a -s type'
fi

# setting cat
if [ "$(command -v bat)" ]; then
  unalias -m 'cat'
  alias cat='bat -pp --theme="Nord"'
fi

# alias clear
alias cl='clear'

# for substrate 
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
