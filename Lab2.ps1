New-Aduser 'Ryan B.' -UserPrincipalName Ryry@Shell.local -Givename Ryan -Surname Brown
set-ADAccountPassword -Identity 'Ryan B.'

enable-ADAccount -Identity 'Ryan B.'
Get-ADUser 'Ryan B.'

$domain ="Shell.local"
$user = "Administrator"
$password=Read-Host -prompt "Enter your password" -AsSecureString

$username ="domain\$user"
$credential =New-Object System.Management .Automation.PSCredential($username,$password)

Add-Computer -DomainName $Shell -Credential $credential

Rename-Computer -ComputerName "WIN-P08VF4E01F2" -NewName "Sever01"

New-LocalGroup -name "Adminclu" -Description "Admin Dept"
New-LocalGroup -name "RyansAdminclu" -Description "Admin Dept"
New-LocalGroup -name "RyansAdmin" -Description "Admin Dept"

Remove-ADGroup -Identity RyansAdmin

Restart-Computer


