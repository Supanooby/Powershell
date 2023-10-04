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

