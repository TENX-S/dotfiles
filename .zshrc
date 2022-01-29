# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

export PATH=$PATH:$HOME/.local/bin

# Set dev bin
export DEV_BIN=$HOME/Developer/bin
export PATH=$PATH:$DEV_BIN/jetbrains

# Set cargo
export PATH=$PATH:$HOME/.cargo/bin

# Path to your oh-my-zsh installation.
export ZSH="/home/ares/.oh-my-zsh"

# Set rustup mirrior
export RUSTUP_DIST_SERVER="https://rsproxy.cn"
export RUSTUP_UPDATE_ROOT="https://rsproxy.cn/rustup"

# Set for go 
export GOPROXY="https://goproxy.io,direct"
export GO111MODULE=on
export PATH=$PATH:/usr/local/go/bin

# Zoxide
eval "$(zoxide init zsh)"

# Set for flutter
export PATH=$PATH:$HOME/Developer/src/flutter/bin
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
export FLUTTER_GIT_URL=https://github.com.cnpmjs.org/flutter/flutter.git

# Set for vcpkg
export PATH=$PATH:$HOME/Developer/Projects/OpenSource/vcpkg
export VCPKG_ROOT="/home/ares/Developer/Projects/OpenSource/vcpkg"

export EIDTOR="neovide --nofork"
export RA_HOME="$HOME/_SDK/ra"

ZSH_THEME="refined"

plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

alias cfgzsh="nve ~/.zshrc&"
alias cfgnvim="nve ~/.config/nvim/init.vim&"
alias restartzsh="source ~/.zshrc" 
alias l1="exa -T --icons --level=1 --git"
alias l2="exa -T --icons --level=2 --git"
alias l3="exa -T --icons --level=3 --git"
alias ll1="exa -Tl --icons --level=1 --git"
alias ll2="exa -Tl --icons --level=2 --git"
alias ll3="exa -Tl --icons --level=3 --git"
alias ls=l1
alias ll=ll1
alias vim=nvim
alias nve=neovide

function ii() {
    # nautilus $1 &
    xdg-open $1
}

function cleanvcpkg() {
	rm -rf "$VCPKG_ROOT/buildtrees"
	rm -rf "$VCPKG_ROOT/downloads"
	rm -rf "$VCPKG_ROOT/packages"
}

function setproxy() {
	export https_proxy=127.0.0.1:20171
	export http_proxy=127.0.0.1:20171
}

function unsetproxy() {
	export https_proxy=
	export http_proxy=
}
