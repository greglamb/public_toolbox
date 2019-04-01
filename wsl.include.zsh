export WINUSER=$(~/cmd.exe /c 'echo %USERNAME%' | sed -e 's/\r//g')
export WINHOME=/c/Users/$(~/cmd.exe /c 'echo %USERNAME%' | sed -e 's/\r//g')

alias cmd="$WINHOME/bin/cmd.exe"
alias code="cmd /c code"
alias winhome="cd $WINHOME"

export DOCKER_HOST=localhost:2375

source ~/dotfiles/public_toolbox/base.include.zsh

git config  --global oh-my-zsh.hide-status 1

winhome
