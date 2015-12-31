# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH


# Set color variables
BLACK="\[\e[0;30m\]"
DARK_GRAY="\[\e[1;30m\]"
RED="\[\e[0;31m\]"
YELLOW="\[\e[0;33m\]"
PURPLE="\[\e[1;34m\]"
BLUE="\[\e[0;34m\]"
LIGHT_BLUE="\[\e[1;34m\]"
GREEN="\[\e[0;32m\]"
LIGHT_GREEN="\[\e[1;32m\]"
CYAN="\[\e[0;36m\]"
LIGHT_CYAN="\[\e[1;36m\]"
LIGHT_RED="\[\e[1;31m\]"
PURPLE="\[\e[0;34m\]"
LIGHT_PURPLE="\[\e[1;35m\]"
BROWN="\[\e[0;33m\]"
LIGHT_GRAY="\[\e[0;37m\]"
WHITE="\[\e[1;37m\]"

source /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-prompt.sh
NAME=YiPz


PROMPT_COLOR='\e[00m\e[38;05;166m'
export EDITOR='vim'
export REPLYTO=yilen.pan@gmail.com
export PS1="${LIGHT_BLUE}\W:${LIGHT_RED}\$(__git_ps1)${LIGHT_GRAY} ${NAME}\$ "
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

alias thesis='hr;cd thesis'
alias dkm='docker-machine'
alias dk='docker'
alias apps='cd ~/Applications'
alias downloads='cd ~/Downloads'
alias documents='cd ~/Documents'
alias a='atom .'
alias c="clear"
alias shutdown30="sudo shutdown -h +30"
alias shutdown45="sudo shutdown -h +45"
alias shutdown60="sudo shutdown -h +60"
alias r="source ~/.bash_profile"
alias editbash='vim ~/.bash_profile; r'
alias ll="ls -l"
alias li="live-server"
alias pyServer="python -m SimpleHTTPServer 8000"
alias desktop="clear;cd ~/Desktop"
alias o="open ."
alias gityolo="git add .; git ci;"
alias s="atom ."
alias shutdown="sudo shutdown -h now"

gitpush () {
  gityolo
  git push origin "$1"
}

mkcd () {
  mkdir "$1"
  cd "$1"
}

addalias () {
  echo "alias $1=\"$2\"" >> ~/.bash_profile;r
}

gitrebase () {
  git checkout master; git pull --rebase  upstream master; git checkout $1; git merge master
}

gitsquash () {
  git rebase -i $1;
}

gitrebaseElectron () {
  git checkout electron-master; git pull --rebase upstream electron; git checkout $1; git merge electron-master
}

dkme () {
  eval "$(docker-machine env $1)"
}

dkrm () {
  docker rm -f $(docker ps -a -q)
}

alias rmf="rm -rf"
alias algos="desktop;cd hackreactor-meetup"
alias brogram="osascript -e \"tell application \"Spotify\" to play track \"spotify:user:123057552:playlist:4FcU2eCMph5xPyKEjElXQq\"\""
alias spotify="open ~/Applications/Spotify.app"
alias loip="ifconfig en0 | grep -oE '((1?[0-9][0-9]?|2[0-4][0-9]|25[0-5])\.){3}(1?[0-9][0-9]?|2[0-4][0-9]|25[0-5])' | head -1"
alias brogram="/usr/local/bin/playbrogram"
alias ip="curl -s ipinfo.io | grep -oE '((1?[0-9][0-9]?|2[0-4][0-9]|25[0-5])\.){3}(1?[0-9][0-9]?|2[0-4][0-9]|25[0-5])' | head -1"
