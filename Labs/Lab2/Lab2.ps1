$compIp = Read-Host "Please provide ip address"
$compDNS = Read-Host "dns"
$compName = Read-Host "name"

Add-WindowsFeature Web-IE-Enhanced-Security-Framework
$AdminIE = "HKLM:\SOFTWARE\Microsoft\Active Setup\Installed Components\{A509B1A7-37EF-4b3f-8CFC-4F3A74704073}"
