export ZSH='/home/meeko/.oh-my-zsh'
export PATH=$HOME/bin:/usr/local/bin:$PATH

RPROMPT='$(git_prompt_info) %F{blue}] %F{green}%D{%H:%M}'
ZSH_THEME='meekoder'

CASE_SENSITIVE='true'

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias vimrc='vim ~/.dotfiles/.vimrc'
alias zshrc='vim ~/.dotfiles/.zshrc'
alias zshtheme='vim ~/.oh-my-zsh/themes/meekoder.zsh-theme'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
