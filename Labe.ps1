New-AdUser -Identity "991397949"
New-AdUser -Identity "Ryan"
New-AdUser -Identity "Brown"

Remove-AdUser -Identity "991397949"

Disable-LocalUser -Name" Ryan"
Disable-LocalUser -Name "Brown"

Enable-AdAccount -Identity "Ryan"

Get-LocalUser

Get-AdUser -LDAPFilter '(!userAccountControl:1.2.840.113556.1.4.803:=2)'

Get-AdUser -Filter {Enabled -wq "False"}
