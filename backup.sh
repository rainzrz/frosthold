#!/bin/bash

BACKUP_DIR="./backups"
DATA_DIR="./data/frosthold"
DATE=$(date +'%Y%m%d_%H%M%S')

mkdir -p "$BACKUP_DIR"

echo "Parando servidor para backup..."
docker compose stop mc_frosthold

echo "Fazendo backup do mundo frosthold..."
tar -czvf "$BACKUP_DIR/frosthold_backup_$DATE.tar.gz" -C "$DATA_DIR" .

echo "Backup criado em $BACKUP_DIR/frosthold_backup_$DATE.tar.gz"

echo "Reiniciando servidor..."
docker-compose start mc_frosthold

