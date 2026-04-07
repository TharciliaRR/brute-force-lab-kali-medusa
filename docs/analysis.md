# 🔎 Security Analysis

## Identified Vulnerabilities

### FTP
- Use of default/weak credentials
- No protection against brute force attacks

### Web Application (DVWA)
- Lack of account lockout mechanisms
- Weak and predictable passwords

### SMB
- Successful password spraying attack
- Multiple users sharing weak passwords

---

## Impact

- Unauthorized access to systems
- Potential data compromise
- Increased risk of privilege escalation
- Exposure of internal services

---

## Risk Level

**High**

The identified vulnerabilities allow attackers to gain access using simple techniques, indicating insufficient security controls.

---

## Recommendations

- Implement Multi-Factor Authentication (MFA)
- Enforce strong password policies
- Enable account lockout after failed attempts
- Monitor authentication logs
- Apply rate limiting on authentication services


