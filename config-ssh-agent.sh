#!/bin/sh

agent_file=~/.ssh-agent

if [[ -z $SSH_AGENT_PID ]]; then
    if [[ -f $agent_file ]]; then
        saved_pid=$(grep SSH_AGENT_PID $agent_file | cut -d\; -f1 | cut -d= -f2)
        ps aux | grep $saved_pid | grep -q ssh-agent
        if [[ $? -eq 0 ]]; then
            echo "ssh-agent is running"
            eval `cat $agent_file`
        else
            echo "ssh-agent is not running"
            ssh-agent -s > $agent_file
            eval `cat $agent_file`
            ssh-add
        fi
    else
        echo "No .ssh-agent exist"
        ssh-agent -s > $agent_file
        eval `cat $agent_file`
        ssh-add
    fi
fi
