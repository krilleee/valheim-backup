#!/bin/bash

worldpath=/home/krille/.config/unity3d/IronGate/Valheim/worlds_local

/usr/bin/rclone sync --update --verbose --transfers 30 --checkers 8 --contimeout 60s --timeout 300s --retries 3 --low-level-retries 10 --stats 1s "$worldpath/*.db" "gdrive:valheim-backup"