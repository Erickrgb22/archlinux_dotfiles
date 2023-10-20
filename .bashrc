neofetch
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="\u@\h \[\e[32m\]\w \[\e[91m\]\$(parse_git_branch)\[\e[00m\]$ "

alias config='/usr/bin/git --git-dir=/home/erick/.cfg/ --work-tree=/home/erick'
alias srvstatus='sudo systemctl status'
alias srvstart='sudo systemctl start'
alias srvstop='sudo systemctl stop'
alias srvrestart='sudo systemctl restart'
alias srvmount='sshfs -o allow_other,default_permissions'
alias pingg='ping 8.8.8.8'
alias ipshow='watch ip a'
