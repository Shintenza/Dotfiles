eval "$(starship init zsh)"
path+=$HOME/.local/bin
export PATH

##################
# AUTOCOMPLETION # 
##################
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select

###########
# ALIASES #
###########

alias untar="tar -xvf"
alias wine="WINEPREFIX=/mnt/Games/Wine wine"
alias vim="nvim"
alias grubcfg="sudo grub-mkconfig -o /boot/grub/grub.cfg"
alias ls="exa -lah"
#alias cat="bat"
alias yay="paru"
alias py="python"
alias neofetch="neofetch --disable gpu cpu memory resolution"
#alias code="vscodium"

###########
# SOURCES #
###########
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
