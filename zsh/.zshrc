# Path to your oh-my-zsh installation.
export ZSH="/home/dwayne/.oh-my-zsh"

ZSH_THEME="jispwoso"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(git colored-man-pages docker golang helm kubectl)

source $ZSH/oh-my-zsh.sh

# User configuration

alias reloadzsh="source ${ZSH}/oh-my-zsh.sh"
alias ll="ls -alF"
alias la="ls -A"
alias l="ls -CF"

export EDITOR="nvim"

export PATH="${HOME}/bin:/usr/local/bin:${PATH}"
export GOPATH="${HOME}/go"
export ANDROID_HOME="${HOME}/Android/sdk/"
export JAVA_HOME=$(update-alternatives --query javac | sed -n -e 's/Best: *\(.*\)\/bin\/javac/\1/p')

# Set PATH to include Yarn bin directory
if [ -d "${HOME}/.yarn/bin" ] ; then
    export PATH="${HOME}/.yarn/bin:${PATH}"
fi

# Set PATH to include Go bin directory
if [ -d "${GOPATH}" ] ; then
    export PATH="${GOPATH}/bin:${PATH}"
fi

# Set PATH to include Android SDK bin directories
if [ -d "${ANDROID_HOME}" ] ; then
    export PATH="${ANDROID_HOME}tools/:${ANDROID_HOME}platform-tools/:${ANDROID_HOME}platform-tools/:${PATH}"
fi

