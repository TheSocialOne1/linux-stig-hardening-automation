# STIG Control Mapping

## Implemented Controls

| Control | Description | Implementation |
|--------|------------|---------------|
| RHEL-08-010550 | Disable root SSH login | sshd_config modification |
| RHEL-08-020120 | Password minimum length | pwquality.conf minlen=14 |
| RHEL-08-030000 | Enable auditd | systemctl enable auditd |
| RHEL-08-040000 | Disable insecure services | telnet, rsh, tftp disabled |

## Notes
This baseline represents an initial automation approach for common RHEL8 STIG controls and is intended for lab and development environments.

