# To Run From Web:  http://boxstarter.org/package/nr/url?https://raw.githubusercontent.com/dotalign/BoxStarter/master/DevMachine.ps1

#### Boxstarter options
$Boxstarter.NoPassword=$false # Is this a machine with no login password?
$Boxstarter.AutoLogin=$true   # Save my password securely and auto-login after a reboot

# Set the computer name
$computerName = "InterviewPC"
Write-Output "Setting computer name to $computerName"
Rename-Computer $computerName

choco install -y eclipse
choco install -y chrome
choco install -y notepadplusplus.install
