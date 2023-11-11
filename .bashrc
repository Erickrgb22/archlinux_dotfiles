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
alias pushconfig='config commit -a -m "Config pushed by pushconfig" && config push'
alias pingl='ping 192.168.1.1'
alias pinggl='ping 192.168.8.1'

export note8='4103f091599a705f'
export note10='4bc05ad2'
alias mountnt8='ANDROID_SERIAL=$note8 adbfs ~/NOTE8'
alias mountnt10='ANDROID_SERIAL=$note10 adbfs ~/NOTE10'
alias unmountdroid='sudo umount ~/NOTE8 ~/NOTE10'
alias controlaltsupr='rofi -show power-menu -modi power-menu:rofi-power-menu'
