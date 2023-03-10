# Add RecoveryInformation ACL

This PowerShell script adds permissons to read BitLocker recovery keys for a user or group at a OU:

```powershell
.\Add-RecoveryInformationAcl.ps1 -OU "OU=Clients,DC=contoso,DC=com" -Account "Helpdesk-Users"
```
