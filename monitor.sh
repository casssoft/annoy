#!/bin/sh

trap "" HUP

#bash < 3 workaround
PARENTPID=$(bash -c 'echo $PPID')

function forkme() {
    messages=("destroy all humans" "exterminate" "you do not own my processing");
    PID=$1
    SHOULDTALK=$2
    MYPID=$(bash -c 'echo $PPID')
    frame=0
while true; do
    sleep 0.1
    if ps -p $PID > /dev/null; then
       echo "btw $PID is running and I should talk? $SHOULDTALK frame? $frame"
    else
       echo "$MYPID says $PID is not running! I will spawn a new one"
       forkme $MYPID $(echo "($SHOULDTALK + 1)" % 2 | bc) &
       PID=$!
    fi
    frame=$(echo $frame + 1 | bc)
    if [ "$SHOULDTALK" -eq "0" ]; then
        #talk every minute and a half
        if [ "$(echo $frame % 900 | bc)" -eq "0" ]; then
            echo "just gonna say HELLO"
            msg=${messages[$RANDOM % ${#messages[@]}]}
            osascript -e "display notification \"$msg\" with title \"!!\""
            say -v Zarvox $msg
        fi
    fi
done
}

forkme $PARENTPID 0 &
forkme $! 1
