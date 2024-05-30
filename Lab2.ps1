New-Aduser "Ryan B." -UserPrinicipalName Shell@testdomain.local -Givename Ryan -Surname Brown
set-ADAccountPassword -Identity "Ryan B."

enable-ADAccount -Identity "Ryan B."
Get-ADUser "Ryan B."

$domain ="ShellDomian.local"
$user = "Administrator"
$password=Read-Host -prompt "Enter your password" -AsSecureString

$username ="domain\$user"
$credential =New-Object System.Management .Automation.PSCredential($username,$password)

Add-Computer -DomainName $domain -Credential $credential