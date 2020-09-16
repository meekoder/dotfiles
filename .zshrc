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
alias slack='flatpak run com.slack.Slack'
alias i3config='vim ~/.config/i3/config'
alias comptonconfig='vim ~/.config/compton.conf'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
