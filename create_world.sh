source config.sh
cd $GAME_DIR
./linuxServer --new "$WORLD_NAME" --port "$UDP_PORT" --http-port "$HTTP_PORT"
