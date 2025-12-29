# Adding Powershell Profile

1. Copy File `pure_posh_git_vers.omp.json` -> `$env:USERPROFILE\oh-my-posh\themes`
2. Copy Contents from `Microsoft.PowerShell_profile.ps1`
3. Open Terminal/Cmder/Powershell
4. Enter `code $PROFILE`
5. Paste Contents into opened file
6. Save & Exit
7. Restart Terminal/Cmder/Powershell

## Chocolately
Install Chocolatey (if not installed): https://chocolatey.org/install

### Adding PoshGit
1.     choco install poshgit -y


### Adding oh my posh
1.     choco install oh-my-posh -y

## Adding PSReadline Intellisense
1. https://learn.microsoft.com/en-us/powershell/scripting/learn/shell/using-predictors?view=powershell-7.5
2.     Install-PSResource -Name PSReadLine
   1. `Get-PSReadLineOption | Select-Object -Property PredictionSource`
   2. `Set-PSReadLineOption -PredictionSource History` (SHOULD ALREADY BE SET IN POWERSHELL PROFILE UPON LAUNCH)
3. InlineView vs ListView:
   1. PSReadLine defaults to InlineView. 
   2. You can **switch between InlineView and ListView** by pressing the `F2` key. 
      1. You can also use the PredictionViewStyle parameter of Set-PSReadLineOption to change the view.

## Adding Powershell 7 (Cmder ONLY, 'Terminal' Will Handle This Automatically)
1. Install Powershell 7 
    - https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell-core-on-windows?view=powershell-7.1#download-the-installer-package
    - Find `PowerShell-7.1.3-win-x86.msi` 
2. If using Powershell 7 need to follow `# Adding Powershell Profile` above again, this time running Powershell 7 (for step 3)
    - To run Powershell 7 in Cmder, Open Cmder, Type `Ctrl T`, select `Startup Command...` as `PowerShell7::Powershell...`
3. If using Powershell 7 need to follow also do `## Adding PSReadline 2.1 Intellisense` above again, this time running Powershell 7
4. To determine Powershell Vers, type `$PSVersionTable` in Powershell
