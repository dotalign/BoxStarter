# To Run From Web:  http://boxstarter.org/package/nr/url?https://raw.githubusercontent.com/dotalign/BoxStarter/master/DevMachine.ps1

#### Boxstarter options
$Boxstarter.NoPassword=$false # Is this a machine with no login password?
$Boxstarter.AutoLogin=$true   # Save my password securely and auto-login after a reboot

# Set the computer name
$defaultComputerName = "[USERNAME]-PC"
$computerName = Read-Host -Prompt "Please Enter the computer name [$defaultComputerName]"
if ($computerName -eq '') { $computerName = $defaultComputerName}

Write-Output "Setting computer name to $computerName"
Rename-Computer $computerName

# Windows Options
Set-TaskbarOptions -lock
Set-WindowsExplorerOptions -EnableShowHiddenFilesFoldersDrives -EnableShowFileExtensions
Enable-RemoteDesktop
Update-ExecutionPolicy Unrestricted
Enable-MicrosoftUpdate
Install-WindowsUpdate -acceptEula -getUpdatesFromMS

# First things first
#-- For various reasons, it's better to install certain things first
cinst -y greenshot       # Let's let this guy grab some key bindings before someone else steals them (I'm looking at you Dropbox)
cinst -y GoogleChrome    # Let's get you a browser

# Officey Things
cinst -y 7zip.install
cinst -y winmerge
cinst -y paint.net
cinst -y slack
cinst -y WinDirStat
cinst -y vcredist2010
cinst -y keepass

# Git
cinst -y git
cinst -y smartgit
cinst -y gitkraken
cinst -y SourceTree

# Text Editors
cinst -y KickAssVim
cinst -y notepadplusplus.install
cinst -y notepad2

# Dev Tools
# -- Useful for us/.Net in general
cinst -y wixtoolset
cinst -y ilspy
cinst -y mfcmapi
cinst -y NuGet.CommandLine
cinst -y debugdiagnostic
cinst -y nunit.install

# -- General dev tools
cinst -y cmder.portable
cinst -y sysinternals
cinst -y binroot
cinst -y GnuWin
cinst -y fiddler4
cinst -y nodejs.install
cinst -y npm
cinst -y mongodb
cinst -y putty.portable
cinst -y SQLite
cinst -y sqlitebrowser
cinst -y ColorCat.portable
cinst -y LogStitcher.portable

# Big things go last
# -- For various reasons, it's better to install certain things last
cinst -y office365proplus   # this guy is just big, so he can go last
