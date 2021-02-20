source $HOME/.cargo/env
export PATH="/opt/homebrew/bin/:$PATH"
export http_proxy="http://localhost:15236"
export https_proxy="http://localhost:15236"
# setting startship
eval "$(starship init zsh)"

#setting exa
if [ "$(command -v exa)" ]; then
    unalias -m 'll'
    unalias -m 'l'
    unalias -m 'la'
    unalias -m 'ls'
    alias ls='exa -G  --color auto --icons -a -s type'
    alias ll='exa -l --color always --icons -a -s type'
fi

# for cat setting
if [ "$(command -v bat)" ]; then
  unalias -m 'cat'
  alias cat='bat -pp --theme="Nord"'
fi

alias cl='clear'

export PATH="$HOME/.cargo/bin:$PATH"

export RUST_SRC_PATH="/Users/suyinrong/.rustup/toolchains/stable-x86_64-apple-darwin/lib/rustlib/src/rust/src"
