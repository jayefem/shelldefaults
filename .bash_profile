test -f ~/.alias && . ~/.alias
test -f ~/bin/shelltools/pcd_autocomplete.bash && . ~/bin/shelltools/pcd_autocomplete.bash

# Git for Windows Git Bash

if [[ -e /mingw64/share/git/completion/git-prompt.sh ]]; then
        source /mingw64/share/git/completion/git-prompt.sh

        #export MSYSTEM=""
        #export TITLEPREFIX=""
        export GIT_PS1_SHOWCOLORHINTS=true
        export GIT_PS1_SHOWDIRTYSTATE=true
        export GIT_PS1_SHOWUNTRACKEDFILES=true
        export GIT_PS1_SHOWUPSTREAM="auto"

        # Git status with color only works with PROMPT_COMMAND
        PROMPT_COMMAND='__git_ps1 "[`date +%H:%M:%S`] \[\033[33m\]\w\[\033[m\]" "\n\\\$ "'

        #export PS1='[\t] \[\033[32m\]\w \[\033[33m\]$(__git_ps1 "(%s)") \[\033[m\]'$'\n\$ '
fi

test -f /mingw64/share/git/completion/git-completion.bash && . /mingw64/share/git/completion/git-completion.bash

