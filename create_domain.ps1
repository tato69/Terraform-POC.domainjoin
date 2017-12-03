install-windowsfeature AD-Domain-Services

start-sleep 10
Import-Module ADDSDeployment

$secpasswd = ConvertTo-SecureString "Password123" -AsPlainText -Force

Install-ADDSForest `
-CreateDnsDelegation:$false `
-DatabasePath "C:\Windows\NTDS" `
-DomainMode "Win2012R2" `
-DomainName "domain.local" `
-DomainNetbiosName "DOMAIN" `
-ForestMode "Win2012R2" `
-InstallDns:$true `
-LogPath "C:\Windows\NTDS" `
-NoRebootOnCompletion:$false `
-SysvolPath "C:\Windows\SYSVOL" `
-SafeModeAdministratorPassword $secpasswd `
-Confirm:$false `
-Force:$true

