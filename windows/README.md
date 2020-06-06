# Windows setup

Automating my Windows setup would be hard because there's no package manager I can rely on.
Most things I want to install aren't available through Chocolatey.
Even for what is, I generally prefer to download things myself and go through the installers.
That way, I know I'm getting the latest version and which options I'm getting.

## Software to install manually

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

## Notes

### Bash and Unix tools

If you install WSL, you'll have `C:\Windows\System32\bash.exe`.
This is in your PATH by default.
But, this isn't just Bash -- it actually launches WSL.
WSL is a great solution, but it's not Windows, and sometimes you just have to work on Windows.
For example, if you compile an executable in WSL, it won't run on Windows.

Git comes with Bash and a MinGW installation that has the core Unix shell tools.
The Git installer will normally put `C:\Program Files\Git\cmd` in your PATH.
This contains `git.exe`, `git-lfs.exe`, and some GUI tools.
Replace this with `C:\Program Files\Git\bin`, and make sure it precedes `C:\Windows\System32` in your PATH.

Then, if you want to launch a Bash shell, just run `bash`, and you'll have all the Unix tools you're used to (`ls`, `rm`, `grep`, `find`, etc.).
I refrain from putting these in my PATH by default because 1) I don't want to clash with PowerShell's aliases and 2) I find the Windows-native tools tend to be better fitted for general use.
But, this is a good solution if you need to run a Bash script or Makefile.

GNU Make doesn't come with MinGW, so that's why I install it with Chocolatey above.