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

#List all services that has "status stopped"
Get-Service | Where-Object {$_.Status -eq "stopped"}
# Return all services where name starts with C 
Get-Service | Where-Object {$_.Name -match "^c.*"}
# Match wording with C and has a letter any range from a-e
Get-Service | Where-Object {$_.Name -match "C[a-e]"}
# Matxh exact number of letters
Get-Service | Where-Object {$_.DisplayName -eq "B?????????e"}

