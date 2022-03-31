#!/usr/bin/bash

trap "exit 1" ERR

while getopts "a:" OPTION; do
    case $OPTION in 
    a) 
        PROG1=$OPTARG
        Rscript $PROG1 &
        pid=$!
        echo "Process with PID $pid is running"
        wait $pid
        echo "Process with PID $pid has finished with Exit status: $?" 
        ;;
     *) 
        echo "Incorrect option provided" 
        exit 1 
        ;;
     esac
done 

trap - ERR

tfile=$(mktemp)
ls -l *.R | if [ -n "$PROG1" ]; then grep -v $PROG1 ; else cat; fi\
| awk '{print $9}' | sed 's/^/Rscript /' > $tfile
chmod u+x $tfile
$tfile


