Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
choco install terraform -y
choco install golang -y 
go get github.com/Telmate/terraform-provider-proxmox/cmd/terraform-provider-proxmox
go get github.com/Telmate/terraform-provider-proxmox/cmd/terraform-provisioner-proxmox
cp go\bin\terraform-provider-proxmox.exe AppData\Roaming\terraform.d\plugins
cp go\bin\terraform-provisioner-proxmox.exe AppData\Roaming\terraform.d\plugins