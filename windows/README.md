# Windows setup

## Software to install manually

I generally prefer to download things myself and go through the installers than use Chocolatey.
That way, I know I'm getting the latest version and which options I'm getting.

- [.NET](https://dotnet.microsoft.com/download)
- [Git](https://git-scm.com/download/win)
- [Miniconda](https://docs.conda.io/en/latest/miniconda.html)
- [Node.js](https://nodejs.org/en/download/)
- [PowerShell](https://github.com/PowerShell/PowerShell/releases)

Install to `C:\bin`:
- [curl](https://curl.haxx.se/windows/)
- [jq](https://stedolan.github.io/jq/download/)
- [SQLite](https://www.sqlite.org/download.html)
- [Sysinternals](https://docs.microsoft.com/en-us/sysinternals/downloads/sysinternals-suite)

## Chocolatey

Some things are just easier to install with Chocolatey, though.

Run the following from an admin PowerShell:

```powershell
# From https://chocolatey.org/install
Set-ExecutionPolicy Bypass -Scope Process -Force
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
```

Note that you have to run as admin to install Chocolatey packages.

```powershell
choco install make
```