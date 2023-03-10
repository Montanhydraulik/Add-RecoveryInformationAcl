# Add RecoveryInformation ACL

This PowerShell script adds permissons to read BitLocker recovery keys for a user or group at a OU:

```powershell
.\Add-RecoveryInformationAcl.ps1 -OU "OU=Clients,DC=contoso,DC=com" -Account "Helpdesk-Users"
```

## Details

The script sets the `msFVE-RecoveryInformation` permission (Schema-Id-Guid `ea715d30-8f53-40d0-bd1e-6109186d782c`) and the *confidentiality bit*.

The basics comes from an [administrator.de forum answer](https://administrator.de/en/bitlocker-recovery-key-delegation-via-powershell-1638502270.html) by **colinardo**.
