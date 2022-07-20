export ZSH="$HOME/.oh-my-zsh"
if [ "$TMUX" = "" ]; then tmux; fi
export DEFAULT_USER=$(whoami)

ZSH_THEME="agnoster"

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias zshconfig="vim ~/.zshrc"
alias ls="exa -larh"
function build() {
    cmake ../ && make && ./"$1"
}
PROMPT_EOL_MARK=''
