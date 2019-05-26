cd ~

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

#alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -a'
alias e='/Applications/Emacs.app/Contents/MacOS/bin/emacsclient -n'

export EDITOR='emacsclient'
export LESS="-XRF"

source ~/.shell/config-ssh-agent.sh

source ~/.shell/git-prompt.sh

export JAVA_DEBUG="-agentlib:jdwp=transport=dt_socket,suspend=y,server=y,address=0.0.0.0:8787"

#export JAVA_HOME=/c/opt/java
export MAVEN_HOME=~/dev/apache-maven-3.6.1
#export NODE_HOME="/c/Program Files/nodejs"
#export NPM_HOME=/c/Users/ruizxu/AppData/Roaming/npm
#export PCF_CL="/c/Users/ruizxu/AppData/Roaming/Cloud Foundry"


export MAVEN_OPTS="$MAVEN_OPTS -Dmaven.wagon.http.ssl.insecure=true -Dmaven.wagon.http.ssl.allowall=true"

export PATH="$PCF_CL":~/bin:~/apps/emacs/bin:$JAVA_HOME/jre/bin:$JAVA_HOME/bin:$ANT_HOME/bin:$MAVEN_HOME/bin:$NODE_HOME:$NPM_HOME:$DOCKER_TOOLBOX_INSTALL_PATH:/usr/local/bin:$PATH

