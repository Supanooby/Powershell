# Chapter 10
# Manage Printers

# To add printer: name, driver and port
Add-Printer -Name "MyPrinter2" -DriverName "Send to Microsoft OneNote 16 Driver" -PortName "PORTPROMPT:"

# Install printer driver: name, computer location 
Add-PrinterDriver -Name "Send to Microsoft OneNote 16 Driver" -ComputerName "\\domainName\ComputerName"

# Add physical port 
Add-PrinterPort -Name "USB003"

# Add TCPIP port 
Add-PrinterPort -Name "MyTCPIP" -PrinterHostAddress "10.0.0.20"

# Get Printer Configuration: Name | Display as Table
Get-PrintConfiguration -PrinterName "MyPrinter2" | Format-List
# For all printers
$Printers = Get-Printer * 
foreach($printer in $Printers){Get-PrintConfiguration -PrinterName $printer.Name}

# Get installed  Printer driver: all
Get-PrinterDriver -Name *
# Get printer driver: driver name | format the list 
Get-PrinterDriver -Name "Send to Microsoft OneNote 16 Driver" | Format-List
# Get all installed drivers on CompuoterName
Get-PrinterDriver -Name * -ComputerName "DomainName\ComputerName"

# Printer Ports
Get-PrinterPort

# GEt Printer Propertys
Get-PrinterProperty -PrinterName "Myprinter2"
# For all
$Printers = Get-Printer *
foreach($printer in $Printers){Get-PrinterProperty -PrinterName $printer.Name}

# Get PrintJob
Get-PrintJob

Get-PrinterNFCTag

# PRinter Jobs commands
# Remove 
Remove-PrinterJob -PrinterName "Myprinter" -Id 1
# Restart
Restart-PrinterJob -PrinterName "Myprinter" -Id 1
# Suspend
Suspend-PrinterJob -PrinterName "Myprinter" -Id 1
# Resume
Resume-PrinterJob -PrinterName "Myprinter" -Id 1

# Rename and Removal
# Rename 
Rename-Printer -Name "Myprinter2" -NewName "MyPrinter3"
# Remove Printer
Remove-Printer -Name "MyPrinter3"
# Remove Printer Driver
Remove-PrinterDriver -Name "Send to Microsoft OneNote 16 Driver"

#Set Printer Configurations for printing 
Set-PrintConfiguration -PrinterName "MyPrinter" -PaperSize A4 -Color $True -DuplexingMode OneSided

#Update configuraotin of existing printer: 
Set-Printer -Name "MyPrinter" -KeepPrintedJobs $True -Shared $True -ShareName "SharedMyPrinter"

Set-PrinterProperty -PrinterName "MyPrinter" -PropertyName "Config:DuplexUnit" -Value $True 

# Share Folder locally
New-SmbShare -path "C:\TestFolder" -Name "SharedFolder1"

# Share folder on domain
New-SmbShare -path "C:\TestFolder" -Name "SharedFolder1" -FullAccess "DomainName1\UserName1" -ChangeAccess "DomainName2\UserName2" 
    # Or 
$myPar = @{
    Name='MySharing' 
    Path= 'C:\TestFolder'
    FullAccess='DomainName1\User1'
    ChangeAccess='Domain2\User2'
}

New-SmbShare $myPar

# Status, Enable, and Disable SMB1
Get-WindowsOptionalFeature -Online -FeatureName SMB1Protocol
Enable-WindowsOptionalFeature -Online -FeatureName SMB1Protocol
Disable-WindowsOptionalFeature -Online -FeatureName SMB1Protocol

