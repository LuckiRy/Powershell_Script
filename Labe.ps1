New-AdUser  -Identity 991397949
New-AdUser  -Identity Ryan
New-AdUser  -Identity Brown

Remove-AdUser  -Identity 991397949 

Disable-ADAccount  -Identity Ryan -PassThru 
Disable-ADAccount -Identity  Brown -PassThru

Enable-ADAccount  -Identity Ryan -Confirm


Get-ADUser -Filter * -Properties * | select-object name

Get-AdUser -Filter {Enabled -eq "False"} -Properties * | Select-Object name

Get-AdUser -Filter {Enabled -eq "True"} -Properties * | Select-Object name 
