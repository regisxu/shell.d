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

source ~/.shell/_kubectl
alias k=kubectl
complete -F __start_kubectl k

source ~/.shell/_istioctl

#PROMPT='%{$fg[green]%}ruizxu@%m%{$reset_color%} %{$fg[yellow]%}%~%{$fg[cyan]%}$(__git_ps1)%{$reset_color%}'$'\n'"$ "
# zsh hange after resize font if set PROMPT directly with __git_ps1
precmd () { __git_ps1 "%{$fg[green]%}ruizxu@%m%{$reset_color%} %{$fg[yellow]%}%~%{$reset_color%} %{$fg[cyan]%}" '%{$reset_color%}'$'\n'"$ " "(%s)" }


#export NVM_DIR="/c/regis/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export JAVA_DEBUG="-agentlib:jdwp=transport=dt_socket,suspend=y,server=y,address=0.0.0.0:8787"

export GIT_HOME=/c/regis/apps/PortableGit
export JAVA_HOME=/c/regis/dev/jdk-11.0.12
export MAVEN_HOME=/c/regis/dev/apache-maven-3.8.1
export GRADLE_HOME=/c/regis/dev/gradle-4.10
export NODE_HOME="/c/Program Files/nodejs"
export PYTHON_HOME=/c/regis/dev/python-3.7.2
export AZURE_HOME="/c/Program Files (x86)/Microsoft SDKs/Azure/CLI2"

export MAVEN_OPTS="$MAVEN_OPTS -Dmaven.wagon.http.ssl.insecure=true -Dmaven.wagon.http.ssl.allowall=true"

export PATH=$GIT_HOME/bin:"$NODE_HOME":$PYTHON_HOME:$PYTHON_HOME/Scripts:~/bin:~/apps/emacs/bin:$JAVA_HOME/jre/bin:$JAVA_HOME/bin:$ANT_HOME/bin:$MAVEN_HOME/bin:$GRADLE_HOME/bin:$PATH:/mingw64/bin:/mingw32/bin:"/c/Program Files/Docker/Docker/resources/bin":/c/Users/ruizxu/AppData/Roaming/npm:"$AZURE_HOME/wbin"

export STUBPROXY=http://10.131.71.31:80

export BAT_CONFIG_PATH=/c/regis/.shell/bat.conf

# support ConEmu Hyperlinks
# if [[ -n "$CONEMUDIR" ]]; then
#     export PROMPT_COMMAND='ConEmuC -StoreCWD'
# fi

# db_home: /c/regis in c:\regis\apps\msys64\etc\nsswitch.conf
