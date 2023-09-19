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

