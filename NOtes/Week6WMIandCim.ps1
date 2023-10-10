#Windows management Instrumentation (WMI)
# WMI is external, managemetn tool
#Computer managment, Service applicat, WMI, Root > 



#Common INformatoin MOdel (CIM)



#CMI

#CMI Example (See all classes under namespace )
Get-CimClass 


#Get Cim about Anything that ends in Process
Get-CiiClass *Proess


# Cim Commands
Invoke-CimMethod 

Set-CimInstance

New-CimSession -CopmuterName PC1

Get-CimInstance -Namespace root/SECURITY -ClassName AntiVirusProduct

Get-CimInstance -Namespace root/securitycenter2 -Class AntiVirusProduct


# Get information aobut the services 
Get-CimInstance -ClassName win32_service
# Filter the results to get state of serices taht arte stopped 
Get-CimInstance -ClassName win32_service -Filter "state='stopped'"
# Pipline to receive first 9 resutls
Get-CimInstance -ClassName win32_service -Filter "state='stopped'" | Select-Object -first 9

#Get all running shares
Get-CimInstance win32_share
# Get all directories
Get-CimInstance win32_directory
# Fitler string path = "c:\windows"
Get-CimInstance win32_directory -Filter "Name='c:\\windows"
# Filter where Archive is false
Get-CimInstance win32_directory -Filter Archive=$False








# WMI 
# Get information about win32_process
Get-WmiObject -Class win32_process

# Get informtoin using namepace
Get-WmiObject -Namespace root/security

# Display all ojects under root/cimv2 in list format
Get-WmiObject -Namespace root/cimv2 -list 


# Display information using object name directly
Get-WmiObject win32_NetworkAdapterConfiguration 
Get-WmiObject win32_NetworkAdapterConfiguration -List

# display the attributes and properties. gm = get-member, 
Get-WmiObject win32_Process | gm 


# Filter
Get-WmiObject win32_NetworkAdapterConfiguration -Filter DHCPEnabled=$true -list
Get-WmiObject win32_NetworkAdapterConfiguration -Filter IPEnabled=$true -list
# Show all ip address enabled but dont display ip address 
Get-WmiObject win32_NetworkAdapterConfiguration -Filter IPEnabled=$true | Select-Object -ExcludeProperty IpAddress
# Or Expand
Get-WmiObject win32_NetworkAdapterConfiguration -Filter IPEnabled=$true -list | Select-Object -ExpandProperty IPAddress

