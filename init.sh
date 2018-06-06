cd ~

alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -a'
alias e='emacsclientw -n'
alias docker='docker -l error'

export EDITOR='emacsclient'
export LESS="-XRF"

source ~/.shell/config-ssh-agent.sh

source ~/.shell/git-prompt.sh

export NVM_DIR="/c/regis/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export JAVA_DEBUG="-agentlib:jdwp=transport=dt_socket,suspend=y,server=y,address=0.0.0.0:8787"

export JAVA_HOME=/c/opt/java
export ANT_HOME=/c/opt/apache-ant-1.8.1
export MAVEN_HOME=/c/regis/dev/apache-maven-3.5.0
export NODE_HOME="/c/Program Files/nodejs"
export NPM_HOME=/c/Users/ruizxu/AppData/Roaming/npm

export MAVEN_OPTS="$MAVEN_OPTS -Dmaven.wagon.http.ssl.insecure=true -Dmaven.wagon.http.ssl.allowall=true"

export PATH=~/bin:~/apps/emacs/bin:$JAVA_HOME/jre/bin:$JAVA_HOME/bin:$ANT_HOME/bin:$MAVEN_HOME/bin:$NODE_HOME:$NPM_HOME:$DOCKER_TOOLBOX_INSTALL_PATH:$PATH:/mingw64/bin:/mingw32/bin

eval "$(docker-machine.exe env --shell=bash default)"

# support ConEmu Hyperlinks
# if [[ -n "$CONEMUDIR" ]]; then
#     export PROMPT_COMMAND='ConEmuC -StoreCWD'
# fi

# db_home: /c/regis in c:\regis\apps\msys64\etc\nsswitch.conf
