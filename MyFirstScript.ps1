Write-Host "Hello"
C:\Users\Administrator\PowerShell_script
Get-ExecutionPolicy -List

Get-Date
Get-Date -Format hh:mm:ss

function get-time {
    Get-Date -format hh:mm
}
Get-time

Get-Module -ListAvailable

Get-Command
Get-Command -Name *IP*
Get-Command -Module NetTCPIP -Name *IP*

Start-Process notepad.exe
$NotepadProc = Get-Process -Name notepad
$NotepadProc.WaitForExit()
Start-Process calc.exe

Get-Process | Get-Member 