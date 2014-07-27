export PATH=$PATH:/user/local/sbin
export PATH=$HOME/.nodebrew/current/bin:$PATH
#export PS1="\[\033[1;33m\][\W]\[\e[00m\]$ "
#export PS1="\[\033[1;33m\][\u\W] \$(parse_git_branch)\$ \[\e[00m\]$ "

function parse_git_branch {
  #git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
function proml {
  #PS1="[\u@\h \W]\$(parse_git_branch)\$ "
  PS1="\[\033[1;33m\][\u\W]\$(parse_git_branch)\[\e[00m\] $ "
}
proml
