Import-Module posh-git

Set-Alias -Name which -Value Get-Command

# In PowerShell, you can't create aliases that include arguments to a command.
# You can work around this by creating a function.

# TODO these don't work. They need functions.
# Set-Alias -Name up -Value "cd .."
# Set-Alias -Name up1 -Value up
# Set-Alias -Name up2 -Value "cd ../.."
# Set-Alias -Name up3 -Value "cd ../../.."
# Set-Alias -Name up4 -Value "cd ../../../.."
# Set-Alias -Name up5 -Value "cd ../../../../.."
# Set-Alias -Name up6 -Value "cd ../../../../../.."
# Set-Alias -Name up7 -Value "cd ../../../../../../.."

# Git aliases
# Note: using the PowerShell verb `Show-` instead of `Get-` avoids shadowing the functions defined in posh-git.
function Add-GitChanges { & git add --all }
Set-Alias -Name gita -Value Add-GitChanges

function Show-GitBranches { & git branch --all }
Set-Alias -Name gitb -Value Show-GitBranches

function Show-GitDiff { & git diff }
Set-Alias -Name gitd -Value Show-GitDiff

function Show-GitDiffCached { & git diff --cached }
Set-Alias -Name gitdc -Value Show-GitDiffCached

function Show-GitLog { & git log --graph }
Set-Alias -Name gitl -Value Show-GitLog

function Show-GitStatus { & git status $args }
Set-Alias -Name gits -Value Show-GitStatus