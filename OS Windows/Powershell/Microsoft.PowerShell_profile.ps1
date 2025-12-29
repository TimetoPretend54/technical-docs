Set-Alias projects GoToProjects
Import-Module PSReadLine
Set-PSReadLineOption -PredictionSource History
Import-Module posh-git

# SETUP
## Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
## oh-my-posh theme
$ompPath = "$env:USERPROFILE\oh-my-posh"
$env:POSH_THEMES_PATH = "$ompPath\themes"
& "$ompPath\oh-my-posh.exe" init pwsh --config "$env:POSH_THEMES_PATH\pure_posh_git_vers.omp.json" | Invoke-Expression
New-Alias -Name 'Set-PoshContext' -Value 'Set-PoshGitStatus' -Scope Global -Force

# FUNCTIONS
## NAVIGATION
function GoToProjects {
    cd "C:\Projects"
}
## Oh My Posh Support (https://ohmyposh.dev/docs/segments/scm/git#posh-git)
function Set-PoshGitStatus {
    $global:GitStatus = Get-GitStatus
    $env:POSH_GIT_STRING = Write-GitStatus -Status $global:GitStatus
}
