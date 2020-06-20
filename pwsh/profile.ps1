Import-Module posh-git

Set-Alias -Name which -Value Get-Command

# In PowerShell, you can't create aliases that include arguments to a command.
# You can work around this by creating functions.

# I don't mind if my functions don't follow PowerShell naming conventions.
# It's simpler than defining aliases for each function
# and avoids polluting the root namespace with a lot of command names.
# Also, PowerShell treats functions the same as aliases (try `Get-Command <function-name>`).

# `up` -> `cd` * n
function up1 { Set-Location .. }
function up2 { Set-Location ../.. }
function up3 { Set-Location ../../.. }
function up4 { Set-Location ../../../.. }
function up5 { Set-Location ../../../../.. }
function up6 { Set-Location ../../../../../.. }
function up7 { Set-Location ../../../../../../.. }
Set-Alias -Name up -Value up1

# Git aliases
function gita  { & git add --all }
function gitb  { & git branch --all }
function gitd  { & git diff }
function gitdc { & git diff --cached }
function gitl  { & git log --graph }
function gits  { & git status $args }