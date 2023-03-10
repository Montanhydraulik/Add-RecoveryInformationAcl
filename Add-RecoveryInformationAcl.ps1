#Source: https://administrator.de/en/bitlocker-recovery-key-delegation-via-powershell-1638502270.html

[CmdletBinding()]
Param(
	[Parameter(Mandatory=$true)]
	[String]
	$OU,
	
	[Parameter(Mandatory=$true)]
	[System.Security.Principal.NTAccount]
	$Account
)

Import-Module ActiveDirectory

# Get ACL from OU
$acl = Get-ACL -Path "AD:$OU"

# Create the access rule
$accessRule = New-Object System.DirectoryServices.ActiveDirectoryAccessRule($Account, 'ReadProperty,ExtendedRight', 'Allow', '{00000000-0000-0000-0000-000000000000}', 'All', '{ea715d30-8f53-40d0-bd1e-6109186d782c}')

# Add the rule to the ACL
$acl.AddAccessRule($accessRule)

# Save Acl back to the OU
Set-ACL -Path "AD:$OU" -AclObject $acl
