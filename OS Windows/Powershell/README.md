# Adding Powershell Profile

1. Copy Contents from `Microsoft.PowerShell_profile.ps1`
2. Open Cmder/Powershell
3. Enter `code . $PROFILE`
4. Paste Contents into opened file
5. Save & Exit
6. Restart Cmder/Powershell

## Adding PSReadline Intellisense
Blog Reference: https://devblogs.microsoft.com/powershell/announcing-psreadline-2-1-with-predictive-intellisense/
### Adding PSReadline 2.1 Intellisense - OPTIONAL (Probably not worth it for local PC)
1. Update to PSReadline 2.1 (in powershell/cmder, enter `Install-Module PSReadLine -RequiredVersion 2.1.0`)
2. Set Predictive Intellisense (enter in powershell `Set-PSReadLineOption -PredictionSource History`)
### Adding PSReadline Intellisense (2.2.0 Beta) - OPTIONAL (Probably not worth it for local PC)
1. In Powershell, enter `Install-Module PSReadLine -AllowPrerelease -RequiredVersion 2.2.0-beta1`


## Adding Powershell 7
1. Install Powershell 7 
    - https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell-core-on-windows?view=powershell-7.1#download-the-installer-package
    - Find `PowerShell-7.1.3-win-x86.msi` 
2. If using Powershell 7 need to follow `# Adding Powershell Profile` above again, this time running Powershell 7 (for step 3)
    - To run Powershell 7 in Cmder, Open Cmder, Type `Ctrl T`, select `Startup Command...` as `PowerShell7::Powershell...`
3. If using Powershell 7 need to follow also do `## Adding PSReadline 2.1 Intellisense` above again, this time running Powershell 7
4. To determine Powershell Vers, type `$PSVersionTable` in Powershell