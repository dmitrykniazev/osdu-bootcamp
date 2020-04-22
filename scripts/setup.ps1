# Install Chocolatey
#[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
#Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Assign Chocolatey Packages to Install
#$Packages = `
#  'git', `
#  'googlechrome', `
#  'visualstudiocode', `
#  'docker-desktop', `
#  'postman', `  
#  'microsoft-windows-terminal', `
#  'cascadiacode'

# Install Packages
#ForEach ($PackageName in $Packages)
#{ choco install $PackageName -y }

# Add User to Docker Group
Add-LocalGroupMember -Group "docker-users" -Member "azureuser"

# Enable WSL
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux -NoRestart

# Download and Install Debian
#Invoke-WebRequest -Uri https://aka.ms/wsl-debian-gnulinux -OutFile ~/Debian.appx -UseBasicParsing
#Add-AppxPackage -Path ~/Debian.appx

# Configure Terminal
# Invoke-WebRequest -Uri https://github.com/dmitrykniazev/osdu-bootcamp/blob/master/scripts/settings.json -OutFile $env:LocalAppData\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json -UseBasicParsing

# Reboot
#Restart-Computer
