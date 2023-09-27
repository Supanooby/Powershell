# Create array 1-9, for each item in the array, add it to the text file at c:\test1.txt
1..9 | ForEach-Object {Add-Content -Path C:\test1.txt -Value  "$_"}

"a", "b", "c" | ForEach-Object {Add-Content -Path C:\test1.txt -Value "this is object = $_" }

# This won't work, 
Get-Service | Get-Process


# Open text file
notepad -Path C:\test1.txt

Get-Content C:\test1.txt


# Get detailed informatoin about commands
help Get-Service -Full


#Regular Expressoin is *, "*" represetns any number of characters, "?" represesnts 1 character, "[a-d]" represents any character between a an d
# "[1-9]" represents any number between 1 - 9, "*[a-c].??d" give a string that has any number of characters starting with a-d.??d

# Compare / Filter 
# eq used for property exact
# match used for reg expression

#List all services that has "status stopped"
Get-Service | Where-Object {$_.Status -eq "stopped"}
# Return all services where name starts with C 
Get-Service | Where-Object {$_.Name -match "^c.*"}
# Match wording with C and has a letter any range from a-e
Get-Service | Where-Object {$_.Name -match "C[a-e]"}
# Matxh exact number of letters
Get-Service | Where-Object {$_.DisplayName -eq "B?????????e"}

#And / Or
# Find anything that starts with (C and ends in anything) and has working set greater than 100MB
Get-Process | Where-Object {$_.Name -match "^c.*" -and $_.ws -gt 100MB}
# Or
Get-Process | Where-Object {$_.Name -match "^c.*" -or $_.ws -gt 100MB}
# Put it in a text file
Get-Process | Where-Object {$_.Name -match "^c.*" -or $_.ws -gt 100MB} | ForEach-Object {Add-Content -Path text1.txt -value "$_"}
Get-Process | Where-Object {$_.Name -match "^c.*" -or $_.ws -gt 100MB} | ForEach-Object {Add-Content -Path text1.txt -value $_}




# Get-Member
Get-Service | Get-Member 



# Sort Objects
# Sort Ivhexts by ws property
Get-Process | Sort-Object -Property ws
# Sort Objets by ws property decending order
Get-Process | Sort-Object -Property ws -Descending
# Selecxt properties and create custom proeprty colum
Get-Service | Select-Object -Property name @{n='Name of Service';e='($_.Name)'}





# Stop-Process with variable
$vb4 = Get-Process -Name "notepad"
Stop-Process -InputObject $vb4
# Stop Porcess will not accept Name , it needs process
Stop-Process -InputObject $vb4.Name




# Delcare Variables
$Varaible = "MyOwnVaraible"
# -InputObject will make asisgn object to VB
$vb = Get-Process -InputObject

$vb = Get-Process -Name *note*
$vb

$vb3 = Get-Process -Name "Teams"
