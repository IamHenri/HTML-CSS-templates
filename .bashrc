######Source https://www.linuxtricks.fr/wiki/personnaliser-son-shell-alias-couleurs-bashrc-cshrc
HISTSIZE=5000
HISTTIMEFORMAT="%F %T "
########## ~/.profile doit exister et être exécutable avec :
#! /bin/bash
#if [ -n "$BASH_VERSION" ]; then
#    if [ -f "$HOME/.bashrc" ]; then
#        . "$HOME/.bashrc"
#    fi
#fi
#########
# RAJOUTS (A copier coller dans /root/.bash pour en bénéficier en root également)
#### ALIAS COMMANDE SYS ####
alias ls="ls --color"
alias grep="grep --color"
alias ll="ls -la"
alias lh="ls -lh"
alias la="ls -a"
alias igrep="grep -i"
##### ALIAS NESS ROOT ####
alias log="sudo tailf /var/log/messages | ccze -A"
alias maj="sudo cl-update -o"
alias maj2="FEATURES=\"-getbinpkg\" sudo cl-update -o"
alias swap="sudo swapoff -a && sudo swapon -a"
alias majsrv="cl-console --host oxygen.linuxtricks.fr --port 8888 --method update"
##### ALIAS SYSTEMES ####
alias gg="ping google.fr"
##### ALIAS PERSOS ######
alias flic="nmap -v -Pn -A"
alias lst="ls -c1X""
alias youtube2mp3="youtube-dl -t -x --audio-format mp3 --audio-quality 0"
alias youtube2mp4="youtube-dl -t -f mp4"
alias shutdown="sudo shutdown"
###### PROMPT ######
if [ "$UID" -ge 500 ] ; then 
        PS1="\# \[\e[0;36m\][\t]\[\e[0;m\] \[\e[0;32m\]\u@\h\[\e[0;m\]: \[\e[1;35m\]\w\[\e[0;m\] \[\e[1;32m\] \\$\[\e[0;m\] " 
fi
if [ "$UID" -eq 0 ] ; then
        PS1="\# \[\e[0;36m\][\t]\[\e[0;m\] \[\e[0;31m\]\u@\h\[\e[0;m\]: \[\e[1;35m\]\w\[\e[0;m\] \[\e[1;31m\] \\$\[\e[0;m\] "
fi
 
