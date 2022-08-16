#!/bin/bash
#https://exercism.org/tracks/bash/exercises/error-handling/edit

main(){
    if [ $# -eq 1 ]
    then
        echo "Hello, ""$@"
    else 
        echo "Usage: error_handling.sh <person>"
        exit 1
    fi
}

main "$@"
