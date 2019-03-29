export WINUSER=$(~/cmd.exe /c 'echo %USERNAME%' | sed -e 's/\r//g')
export WINHOME=/c/Users/$(~/cmd.exe /c 'echo %USERNAME%' | sed -e 's/\r//g')

alias cmd="$WINHOME/bin/cmd.exe"
alias code="cmd /c code"

#plugins+=(zsh-nvm)

source ~/dotfiles/public_toolbox/base.include.zsh

