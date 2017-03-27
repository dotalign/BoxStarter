# To Run From Web:  http://boxstarter.org/package/nr/url?https://raw.githubusercontent.com/jquintus/QuintusInstall/master/BoxStarter-Work.ps1

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

# Must Have Toys
cinst -y GoogleChrome
cinst -y KickAssVim
cinst -y greenshot # Keep this before Dropbox to make sure we get the print screen hooks registered
cinst -y keepass
cinst -y cmder.portable

# Less Important Toys
cinst -y 7zip.install
cinst -y sysinternals
cinst -y binroot
cinst -y winmerge
cinst -y dropbox
cinst -y git
cinst -y SourceTree
cinst -y GnuWin
cinst -y paint.net
cinst -y fiddler4
cinst -y slack
cinst -y WinDirStat
cinst -y nodejs.install
cinst -y npm
cinst -y mongodb

cinst -y NuGet.CommandLine
cinst -y debugdiagnostic
cinst -y ilspy
cinst -y mfcmapi
cinst -y nunit.install
cinst -y putty.portable
cinst -y SQLite
cinst -y sqlitebrowser
cinst -y vcredist2010
cinst -y wixtoolset

# Tools Josh Wrote
cinst -y ColorCat.portable
cinst -y LogStitcher.portable
