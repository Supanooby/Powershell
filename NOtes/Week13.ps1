import-module ActiveDirectory
# Windows Server Commands 

# See 
Get-Module -List ActiveDirectory

Install-WindowsFeature -Name RSAT-AD-Powershell

# Forest informatoin
Get-ADForest
# Domain Informatoin
Get-ADDDomain
# Domain Controller Informatoin
Get-ADDomainControlelr
# Get trusted computers and replication sites
Get-AdTrust -Filter *
Get-ADREplicationSite -Filter *
# NAvigate Active Direcotry 
Set-Location AD:
Get-ChildItem

Set-Location "dc,cpandl,dc=com"
#PSDrive

# Add new user to OU named HR
New-AdUser -Name "Bill" -SamAccountName "bsmith" -GivenName "Bill" -Surname "Smith" -DisplayName "bill SMith" -Path "OU=HR,DC=cpanl,DC=com"

# put password 
$pwd = Read-Host -AsSecureString "input password"


Set-AdAccountPassword -Identity "tthumb" -NewPassword $pass -Reset

# Search for users 
Get-ADUSer -salonius
# or 
Get-AdUser -Filter *
# or 
Get-ADUser -FIlter {(Surname -like "sal*")}

# Search for account with sepcific parameters
Search-ADAccount -PasswordExpired -UsersOnly -SearchBse "OU=Users,dc=cpandl,dc=com" -SearchScope OneLevel


# Restore Delted OBjects
Restore-ADObject

#Modify UAC properties on user objects
Set-ADAccountControl