#!/bin/bash
export SteamAppId=892970

function log {
  echo "S> ${*}"
}

export SERVER_NAME="${SERVER_NAME:-$DEFAULT_SERVER_NAME}"
log "SERVER_NAME: \"${SERVER_NAME}\""

export SERVER_MOTD="${SERVER_MOTD:-$DEFAULT_SERVER_MOTD}"
log "SERVER_MOTD: \"${SERVER_MOTD}\""

export SERVER_WORLD="${SERVER_WORLD:-$DEFAULT_SERVER_WORLD}"
log "SERVER_WORLD: \"${SERVER_WORLD}\""

export SERVER_PASSWORD="${SERVER_PASSWORD:-$DEFAULT_SERVER_PASSWORD}"
log "SERVER_PASSWORD: \"${SERVER_PASSWORD}\""


if [ -d "${SERVER_DATA_PATH}/configs" ];
  then
    log "Configuration files are attached in ReadOnly, copying them..."
    for CONFIG_FILE in "${SERVER_DATA_PATH}/configs"/*.txt; do
      FILENAME="$(basename "$CONFIG_FILE")"
      cp -f "${CONFIG_FILE}" "${SERVER_DATA_PATH}/${FILENAME}"
      done
  fi
