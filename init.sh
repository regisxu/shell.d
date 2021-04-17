cd ~

alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -a'
alias e='emacsclientw -n'
alias docker='MSYS2_ARG_CONV_EXCL="*" docker'

export EDITOR='emacsclient'
export LESS="-XRF"
#export LESS="-RF"

#source ~/.shell/config-ssh-agent.sh

source ~/.shell/git-prompt.sh

PROMPT='%{$fg[green]%}%n@%m%{$reset_color%} %{$fg[yellow]%}%~%{$fg[cyan]%}$(__git_ps1)%{$reset_color%}'$'\n'"$ "

#export NVM_DIR="/c/regis/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export JAVA_DEBUG="-agentlib:jdwp=transport=dt_socket,suspend=y,server=y,address=0.0.0.0:8787"

export GIT_HOME=/c/regis/apps/PortableGit
export JAVA_HOME=/c/regis/dev/jdk1.8.0_131
export MAVEN_HOME=/c/regis/dev/apache-maven-3.5.0
export GRADLE_HOME=/c/regis/dev/gradle-4.10
export NODE_HOME="/c/Program Files/nodejs"
export PYTHON_HOME=/c/regis/dev/python-3.7.2

export MAVEN_OPTS="$MAVEN_OPTS -Dmaven.wagon.http.ssl.insecure=true -Dmaven.wagon.http.ssl.allowall=true"

#export CLOUD_SDK="/c/Users/ruizxu/AppData/Local/Google/CloudSDK/google-cloud-sdk"

export PATH=$CLOUD_SDK/bin:$GIT_HOME/bin:"$NODE_HOME":$PYTHON_HOME:$PYTHON_HOME/Scripts:"$PCF_CL":~/bin:~/apps/emacs/bin:$JAVA_HOME/jre/bin:$JAVA_HOME/bin:$ANT_HOME/bin:$MAVEN_HOME/bin:$GRADLE_HOME/bin:$PATH:/mingw64/bin:/mingw32/bin:"/c/Program Files/Docker/Docker/resources/bin":/c/Users/ruizxu/AppData/Roaming/npm

export STUBPROXY=http://10.131.71.31:80

# support ConEmu Hyperlinks
# if [[ -n "$CONEMUDIR" ]]; then
#     export PROMPT_COMMAND='ConEmuC -StoreCWD'
# fi

# db_home: /c/regis in c:\regis\apps\msys64\etc\nsswitch.conf
