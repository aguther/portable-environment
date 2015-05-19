# directory navigation
alias ..='cd ..'

# directory listing commands
alias ll='ls -lhF --color=auto'
alias lla='ls -lhFA --color=auto'
alias ll.='ls -lhFA -d .* --color=auto'

# exit helper
alias clex='rm -f ~/.viminfo; rm -f ~/.bash_history; history -c; exit'
