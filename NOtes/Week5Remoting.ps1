#Week5 Remoting
# Credentials (Runing using as adminstrator)
Get-WinEvent -LogName Application -MaxEvents1 -ComputerName ex1 -Credential ad\administrator
#Get-Service and Get-Process do not hae crednetial parameter 

# Get Any Events from irrent PC
Get-WinEvent -ListLog * 

# Get Any EVent from another pc (In this case Serv01)
Get-WinEvent -ListLog * -ComputerName Serv01

# Enable Remoting 
Enter-PSSession Serv01

# WinRM is Standard WS-Managemetn protocol implementation
# Enable the WinRM server

# To enable Remoting 
# Run gpedit.msc
# Administrative Tempolate / Windows Components / Windows Remote Management (WinRM) 
# WinRM Service > Allow Remote SErver Management through WinRM


# Enable REomting on Client Machine 
Enable-PSRemoting
# will see error, becaue Network Catagory is public, note InterfaceIndex
Get-NetConnectionProfile
# Set the NetworkIndex 1 to Private
Set-NetConnectionProfile  -InterfaceIndex 1 -NetWorkCatagory Private
#Finally Enable PSRemoting to make it work
Enable-PSRemoting



#One-to-One Interactive
Start-Transcript

# create SessionGe
$ds = Enter-PSSession -ComputerName Serv01 -Credential ad_administratior

# See running sessions
Get-PSSession
# Stop Sessions
Get-PSSession | Exit-PSSession

# One to Many using "Invoke-Command"
Invoke-Command -ComputerName Server1, s2, win1 -ScriptBlock {Get-EventLog -LogName Security  }

# Get Credential
$cn = “dc1”,”dc2”,”dc3”
$cred = Get-Credential AD\Administrator
Invoke-Command –cn $cn –cred $cred –ScriptBlock {gwmi win32_bios

# Run script on one-to-one
Invoke-Command -FilePath C:\Windows\script.ps1 -ComputerName win1 



#Accept Session

$dc = New-PSSession –ComputerName WIN10 –Credential AD\Administrator
Invoke-Command –Session $dc –ScriptBlock {hostname}
Invoke-Command –Session $dc –ScriptBlock {Get-EventLog Application –newest 1}
Remove-PSSession $dc


# Powershell Web Access  Running powershell web server 


