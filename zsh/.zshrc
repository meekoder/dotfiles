export ZSH='/home/meeko/.oh-my-zsh'
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$PATH:/usr/local/go/bin
export PATH=~/.npm-global/bin:$PATH

RPROMPT='$(git_prompt_info) %F{blue}] %F{green}%D{%H:%M}'
ZSH_THEME='meekoder'

CASE_SENSITIVE='true'

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias vimrc='vim ~/.dotfiles/.vimrc'
alias zshrc='vim ~/.zshrc'
alias zshtheme='vim ~/.oh-my-zsh/themes/meekoder.zsh-theme'
alias i3config='vim ~/.config/i3/config'
alias comptonconfig='vim ~/.config/compton.conf'
alias slack='slack & disown'
alias zoom='zoom & disown'
alias obs='flatpak run com.obsproject.Studio & disown'
alias postman='postman & disown'
alias compass='mongodb-compass & disown'
alias arandr='bash ./screenlayout/aoc.sh'

alias audio-hdmi='pacmd set-card-profile 0 output:hdmi-stereo+input:analog-stereo'
alias audio-laptop='pacmd set-card-profile 0 output:analog-stereo+input:analog-stereo'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export NVM_DIR="/home/meeko/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
