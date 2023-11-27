# Managing Active Directory using Powershell
Import-Module ActiveDirectory

#dsadd: add user 
dsadd user cn=Test2,cn=users,dc-DOMAINNAME,dc=com -disabled no -pwd !Ahas123a -mustchpwd yes

# Using powershell
New-ADUser -Name billy -Path"OU=Manager,DC=T,DC=com" -AccountPassword(Read-Host -AsSecureString "Input Password")
New-ADUser -Name "OU=Manager,DC=T,DC=com" -AccountPassword(ConvertTo-SecureString  g "Input Password")

# Import Multiple users
# Multiple Users with CSVDE
# -i: import -f: file
CSVDE -i -f Newport.csv

# objecgClass SamAccountNAme dn
# type cmd in file explorer 

#Using Poewrshell
$Users = "John", "Bob", "Carly"

foreach($user in $users) {
    New-ADUSer -SamAccountName 
}

#dsadd computesr
dsadd computer cn=clinet01,cn=computers,dc=TharsonD,dc=com


#enable/disable account using powershell
Disable-ADAccount -identity "Test2"




