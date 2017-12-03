$secpasswd = ConvertTo-SecureString "Password123" -AsPlainText -Force
$cred = New-Object System.Management.Automation.PSCredential ("domain\tato", $secpasswd)
$domain="domain.local"
add-computer -DomainName $domain -Credential $cred -Restart


