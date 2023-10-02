#!/bin/sh

args=""

if [ -n "$PORT" ]; then
  args="$args --port=$PORT"
fi

if [ -n "$ISOLATE_ROOM" ]; then
  args="$args --isolate-rooms"
fi

if [ -n "$PASSWORD" ]; then
  args="$args --password=$PASSWORD"
fi

if [ -n $SALT ]; then
  args="$args --salt=$SALT"
fi

if [ -n "$MOTD_FILE" ]; then
  args="$args --motd-file=$MOTD_FILE"
fi

if [ -n "$DISABLE_READY" ]; then
  args="$args --disable-ready"
fi

if [ -n "$DISABLE_CHAT" ]; then
  args="$args --disable-chat"
fi

if [ -n "$MAX_CHAT_MESSAGE_LENGTH" ]; then
  args="$args --max-chat-message-length=$MAX_CHAT_MESSAGE_LENGTH"
fi

if [ -n "$MAX_USERNAME_LENGTH" ]; then
  args="$args --max-username-length=$MAX_USERNAME_LENGTH"
fi

if [ -n "$STATS_DB_FILE" ]; then
  args="$args --stats-db-file=$STATS_DB_FILE"
fi

if [ -n "$TLS_PATH" ]; then
  args="$args --tls=$TLS_PATH"
fi


syncplay-server $args