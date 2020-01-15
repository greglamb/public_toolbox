umask 022

export WINUSER=$(~/cmd.exe /c 'echo %USERNAME%' | sed -e 's/\r//g')
export WINHOME=/c/Users/$(~/cmd.exe /c 'echo %USERNAME%' | sed -e 's/\r//g')

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

alias cmd="$WINHOME/bin/cmd.exe"
alias code="cmd /c code"
alias winhome="cd $WINHOME"

export DOCKER_HOST=tcp://localhost:2375

source ~/dotfiles/public_toolbox/base.include.zsh

git config  --global oh-my-zsh.hide-status 1

winhome
