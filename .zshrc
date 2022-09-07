# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && . "$HOME/.fig/shell/zshrc.pre.zsh"
# ZSH_DISABLE_COMPFIX="true"
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="/usr/local/sbin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="refined"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" "linuxonly")

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="false"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git macos autojump zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias cal="insect"
alias tgz="tar -zcvf $1 $2"
alias dtgz="tar -zxvf $1 $2"
alias cfgzsh="vim ~/.zshrc"
alias cfgnvim="vim ~/.config/nvim/init.vim"
alias cfgalac="vim ~/.config/alacritty/alacritty.yml"
alias restartzsh="source ~/.zshrc"
alias stenx-s="git config user.name "TENX-S" && git config user.email "ttenx@pm.me""
alias skallenW="git config user.name "KallenW" && git config user.email "coopersjy@gmail.com""
alias nve=neovide
alias l1="exa -T --icons --level=1 --git"
alias l2="exa -T --icons --level=2 --git"
alias l3="exa -T --icons --level=3 --git"
alias ll1="exa -Tl --icons --level=1 --git"
alias ll2="exa -Tl --icons --level=2 --git"
alias ll3="exa -Tl --icons --level=3 --git"
alias ls=l1
alias ll=ll1
alias vim=nvim
alias gcc=gcc-11

export NO_PROXY=127.0.0.1,localhost,::1

export GOPROXY=https://goproxy.io,direct
export BLOG_DIR=$HOME/Documents/Developer/OpenSource/blog
export SKIA_BINARIES_URL=https://github.91chi.fun//https://github.com/rust-skia/skia-binaries/releases/download/{tag}/skia-binaries-{key}.tar.gz
export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn

# Set PATH for _SDK
export PATH=$PATH:/Users/tenx/_SDK/bin:$HOME/_SDK/grpcui

export PATH=$PATH:/Users/tenx/go/bin

# Set PATH for LaTeX-4.01
export LTX_PATH="/Lirary/Tex"
export PATH=$PATH:$LTX_PATH/texbin

# Set PATH for cargo
export PATH=$PATH:$HOME/.cargo/bin

# Set PATH for gem
export GEM_HOME="$HOME/.gem"
export PATH=$PATH:$GEM_HOME

# Set PATH for Java
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_251.jdk/Contents/Home"
export PATH=$PATH:$JAVA_HOME/bin

# Set PATH for flutter
export FLUTTER_HOME="$HOME/_SDK/flutter"
export PATH=$PATH:$FLUTTER_HOME/bin

# Set PATH for LLVM
export VCPKG_ROOT=$HOME/Documents/Developer/OpenSource/vcpkg
export PATH="/usr/local/opt/llvm/bin:$PATH"

# Set PATH for vcpkg
export PATH=$PATH:$VCPKG_ROOT

export PATH=$PATH:"$HOME/Library/Python/3.9/bin"

# Set BAT
export BAT_THEME="OneHalfDark"

# Set Rust error message
export RUST_BACKTRACE=full

export EDITOR=nvim
export RA_HOME=$HOME/_SDK/ra

#autojump setting
[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh

# Remove first line of space
unsetopt PROMPT_SP
source /Users/tenx/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Set mirrors for Rust
# export RUSTUP_DIST_SERVER=https://mirrors.tuna.tsinghua.edu.cn/rustup
# export RUSTUP_DIST_SERVER=https://mirrors.ustc.edu.cn/rust-static
# export RUSTUP_UPDATE_ROOT=https://mirrors.ustc.edu.cn/rust-static/rustup
export RUSTUP_DIST_SERVER="https://rsproxy.cn"
export RUSTUP_UPDATE_ROOT="https://rsproxy.cn/rustup"

# Set mirrors for Homebrew
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles
# export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.sjtug.sjtu.edu.cn/homebrew-bottles

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# For zoxide
eval "$(zoxide init zsh)"

function cleanvcpkg() {
	rm -rf $VCPKG_ROOT/buildtrees
	rm -rf $VCPKG_ROOT/downloads
	rm -rf $VCPKG_ROOT/packages
}

function setproxy() {
	export http_proxy=http://127.0.0.1:7890
	export https_proxy=http://127.0.0.1:7890
}

function unsetproxy() {
	export http_proxy=
	export https_proxy=
}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# opam configuration
[[ ! -r /Users/tenx/.opam/opam-init/init.zsh ]] || source /Users/tenx/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && . "$HOME/.fig/shell/zshrc.post.zsh"
