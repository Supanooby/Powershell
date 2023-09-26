<# Pipe ( | )  will put object into another command
#>
# Recurse will go into subfolders
Get-ChildItem C:\Windows -Recurse # Recurse will go into subfolders

# Get Service, select the Objects and only show its Status and NAme attribute
Get-Service | Select-Object status, name

# Sort it by status, and Out-Host will display to screen, -Paging will display it by pages
Get-Service | Select-Object status, name | Sort-Object status | Out-Host -Paging

# Where OBject filter
Get-Service | Where-Object {$_.DependentServices -ne $null}
    # Get Service, where the Object 's DependentServices are NOT EQUAL (ne) to empty (null)


Get-Service | Where-Object {$_.Name -eq "bits"}

Get-Service | Where-Object {$_.Name -match "^B.*"}


# Get Services where WorkingSet is greater than 250 mb and name matches anything that starts with a p
Get-Process | Where-Object {$_.WorkingSet -gt 250MB -and $_.Name -match "^p.*"}




#Array 
$myArr = "a", "b", "c"
foreach($item in $myArr)
{write-Host $item}

# Foreach 
123,234,65 | ForEach-Object -Process {$_/10}

# Formatting
# formating to show cpu in 5 columns 
Get-Process | Format-Wide -Property name cpu -Column 5




# Export and INport files (html, csv, txt, )
# Export csv file test.csv
Get-Process | Export-Csv test.csv

#Import Csv File
Import csv C:\Users\Tharson Sutharson\test.csv

# Export clixml
Get-Process | Export-Clixml test.xml

#Import Clixml
Import-Clixml test.xml

# Make webage of information
Get-Service | Export-Csv c:\serv.csv
Get-Service | ConvertTo-Csv | Out-File c:\serv.csv

Get-Service | ConvertTo-Html -Property Displayname, status, | Out-File C:\serv.htm





#notepad
Notepad c:

#HTML
Invoke-Item > test.html

#put into file
Get-Service > test.txt

# put into file 
Get-Service | Out-File test2.txt

#Prints it to default printer (shuold be adobe, and will print to pdf)
Get-Service | Out-Printer test2.txt






#Display results in gui
Get-Process | Out-GridView
Get-Service | Out-GridView


# CMDLETS that ends 
Stop-Process /kill
Stop-Service
$ConfirmPreference
$WhatIfPreference
-Confirm
WhatIf


