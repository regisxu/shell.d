cd /mnt/c/regis

alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -a'
alias e='emacsclientw.exe -n'
alias docker='sudo docker'
alias bat='batcat --style plain'

export EDITOR='emacsclient.exe'
export LESS="-XRF"

#source ~/.shell/config-ssh-agent.sh

source ~/.shell/git-prompt.sh

source ~/.shell/_kubectl
alias k=kubectl
complete -F __start_kubectl k

source ~/.shell/_istioctl

export JAVA_DEBUG="-agentlib:jdwp=transport=dt_socket,suspend=y,server=y,address=0.0.0.0:8787"

export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
export ANT_HOME=/c/opt/apache-ant-1.8.1
export MAVEN_HOME=/mnt/c/regis/dev/apache-maven-3.5.0


export MAVEN_OPTS="$MAVEN_OPTS -Dmaven.wagon.http.ssl.insecure=true -Dmaven.wagon.http.ssl.allowall=true"

export PATH=~/bin:/mnt/c/regis/apps/emacs/bin:$JAVA_HOME/jre/bin:$JAVA_HOME/bin:$ANT_HOME/bin:$MAVEN_HOME/bin:$PATH

export DISPLAY=$(ip route|awk '/^default/{print $3}'):0.0
export GDK_SCALE=2

# support ConEmu Hyperlinks
# if [[ -n "$CONEMUDIR" ]]; then
#     export PROMPT_COMMAND='ConEmuC -StoreCWD'
# fi

# db_home: /c/regis in c:\regis\apps\msys64\etc\nsswitch.conf
