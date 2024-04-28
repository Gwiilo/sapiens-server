#!/bin/bash

source config.sh

check_screen() {
    # Check if a screen session with the specified name exists
    screen -ls | grep -q "$SCREEN_NAME"
}

start_server() {
    check_screen
    if [ $? -eq 0 ]; then
        read -p "It appears there is already a Sapiens server running. Do you want to open the server console instead? (y/n): " choice
        case $choice in
            y|Y)
                open_console
                ;;
            n|N)
                echo "Exiting without starting a new server."
                exit 0
                ;;
            *)
                echo "Invalid choice. Exiting without starting a new session."
                exit 1
                ;;
        esac
    else
        screen -dmS $SCREEN_NAME /bin/bash -c "./start.sh"
    fi
}

stop_server() {
    screen -XS $SCREEN_NAME quit
}

open_console() {
    screen -r $SCREEN_NAME
}

case $1 in
    start)
        start_server
        ;;
    stop)
        stop_server
        ;;
    restart)
        stop_server
        sleep 5  # wait for the server to shut down gracefully
        start_server
        ;;
    upgrade)
        upgrade_server
        ;;
    console)
        open_console
        ;;    
    *)
        echo "Usage: $0 {start|stop|restart|backup|upgrade|console}"
        exit 1
        ;;
esac
