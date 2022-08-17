Write-Output 'Custom PowerShell profile in effect!'
Add-Content -Path 'D:\Script Lab\FirstScript.ps1' -Value "[ZoneTransfer]`nZoneId=3" -Stream 'Zone.Identifier'
Clear-Content -Path 'D:\Script Lab\FirstScript.ps1' -Stream 'Zone.Identifier'
if (([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator"))
{Write-Output 'Running as Administrator!'}
else
{Write-Output 'Running Limited!'}
Pause
