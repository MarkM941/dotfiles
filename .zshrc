# Path to your oh-my-zsh installation.
export ZSH=/Users/mmillstein/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias gst='git status'
alias gpoh='git push origin HEAD'
alias gpr='git pull --rebase --stat'
alias gg='git grep -i -I -n --color -e '
alias git-scoreboard="git shortlog -n -s -e"
alias gf='git fetch && git fetch --tags'
alias gl="git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gca='git commit -am'

# Prints the commits in this branch
alias gitc='git cherry -v master @{u}'
alias gitcc='git cherry -v master @{u} | wc -l'

# Cleans local branches that have been deleted remotely
alias gclean='git checkout master && git pull && git branch --merged master | grep -v "\* master" | xargs -n 1 git branch -d'

# move uncommitted changes to a new branch
gitstashbranch() {
  git stash
  git pull origin master
  git checkout -b $1
  git stash pop
}

export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin:/Users/mmillstein/.vimpkg/bin

alias vim='mvim -v'
export VISUAL=vim
export EDITOR="$VISUAL"

export WORKON_HOME=~/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON='/usr/local/bin/python2.7'
source /usr/local/bin/virtualenvwrapper.sh

alias mvndeps='mvn dependency:analyze -DoutputXML=true'

bindkey -e
bindkey '^[[1;9C' forward-word
bindkey '^[[1;9D' backward-word

export M2_HOME='/usr/local/Cellar/maven/3.5.0/libexec'
export GRADLE_HOME='/usr/local/Cellar/gradle/4.2.1/bin'


athenadb() {
    if [ -z "$1" ]
        then
            athena --profile athena --db analyticskafka_prod --region us-east-1 --s3-bucket s3://hubspot-athena-scratch
        else
            athena --profile athena --db $1 --region us-east-1 --s3-bucket s3://hubspot-athena-scratch
    fi
}
