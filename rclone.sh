#!/bin/bash

worldpath=/home/krille/.config/unity3d/IronGate/Valheim/worlds_local

rclone sync $worldpath gdrive:valheim-backup --include "*.db" --verbose