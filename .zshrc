export ZSH='/home/meeko/.oh-my-zsh'
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$PATH:/usr/local/go/bin

RPROMPT='$(git_prompt_info) %F{blue}] %F{green}%D{%H:%M}'
ZSH_THEME='meekoder'

CASE_SENSITIVE='true'

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias vimrc='vim ~/.dotfiles/.vimrc'
alias zshrc='vim ~/.dotfiles/.zshrc'
alias zshtheme='vim ~/.oh-my-zsh/themes/meekoder.zsh-theme'
alias i3config='vim ~/.config/i3/config'
alias comptonconfig='vim ~/.config/compton.conf'
alias slack='slack & disown'
alias zoom='zoom & disown'
alias spotify='spotify & disown'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH="/usr/lib/ccache:$PATH"
if [ -e /home/meeko/.nix-profile/etc/profile.d/nix.sh ]; then . /home/meeko/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
