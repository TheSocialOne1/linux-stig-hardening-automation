#!/bin/bash

echo "Applying RHEL8 STIG baseline hardening..."

# Disable root SSH login
sed -i 's/^#PermitRootLogin.*/PermitRootLogin no/' /etc/ssh/sshd_config

# Enforce password complexity
sed -i 's/^# minlen =.*/minlen = 14/' /etc/security/pwquality.conf

# Account lockout policy
authselect enable-feature with-faillock

# Enable auditd
systemctl enable auditd
systemctl start auditd

# Disable insecure services
for svc in telnet rsh ypbind tftp; do
    systemctl disable $svc 2>/dev/null
    systemctl stop $svc 2>/dev/null
done

echo "STIG baseline applied."

