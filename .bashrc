neofetch
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="\u@\h \[\e[32m\]\w \[\e[91m\]\$(parse_git_branch)\[\e[00m\]$ "

alias confedit='GIT_DIR=$HOME/.cfg GIT_WORK_TREE=$HOME nvim ./'
alias config='/usr/bin/git --git-dir=/home/erick/.cfg/ --work-tree=/home/erick'
alias srvstatus='sudo systemctl status freeradius httpd mariadb'
alias srvstart='sudo systemctl start freeradius httpd mariadb'
alias srvstop='sudo systemctl stop freeradius httpd mariadb'
alias srvrestart='sudo systemctl restart freeradius httpd mariadb'
alias srvmount='sshfs -o allow_other,default_permissions'
alias pingg='ping 8.8.8.8'
