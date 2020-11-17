#!/bin/bash
DEEPORNOT="-maxdepth 1"
while getopts 'c:irR' opt; do

    case "${opt}" in
        c)  # копировать найденные файлы в указанный каталог
            echo $OPTARG
            COPY=YES
            DESTDIR="$OPTARG" 
        ;;
        i) 
            CASEMATCH='-i'
        ;;
        [Rr] 
            unset DEEPORNOT
        ;;
        *) 
            exit 2 ;;
    esac
done

shift $((OPTIND - 1))
PATTERN=${1:-PDF document}
STARTDIR=${2:-.}
find $STARTDIR $DEEPORNOT -type f | while read FN
do
    file $FN | egrep -q $CASEMATCH "$PATTERN"
    if(( $? == 0 ))
        then
        echo $FN
        if [[ $COPY ]]
            then
            cp -p $FN $DESTDIR
        fi
    fi
done