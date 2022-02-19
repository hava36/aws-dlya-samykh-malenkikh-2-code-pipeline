#!/usr/bin/env bash
while [ true ]
do
    if [ "$(curl -s http://127.0.0.1:8080/health)" = 'OK' ]
    then
        exit 0
    else
        echo "check server is running?"
        sleep 3s
    fi
done
