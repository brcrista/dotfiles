#!/usr/bin/env pwsh
#
# Install posh-git: https://github.com/dahlbyk/posh-git
# Prerequisites:
# - Powershell Core >= 6.0
# - git installed and in PATH
# - Windows: script execution policy set to `RemoteSigned` or `Unrestricted`

PowerShellGet\Install-Module posh-git -Scope CurrentUser -AllowPrerelease -Force
Add-PoshGitToProfile
