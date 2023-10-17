# Getting prepared for Automation ( Scripting )
# See if scripts can run
Get-ExecutionPolicy

# Change to allow scripts to run, and yes to all
Set-ExecutionPolicy unrestricted

# Define variables 
$varString = "String"

# Print Var to Screen
Write-Host $varString

# Get datatype of variable
$varString.GetType()

#Create a Int Array 
$varIntArray = 1,2,3,4,5
$varIntArray.GetType()
# Write each integer in array that is pipelined into the command 
$varIntArray|ForEach-Object{Write-Host $_}

# Single Line Comments
<# 
    Multi Line Comments
#>


$a="Hello, World" 
$b="123456"
# Variable still works in quotation, C is both $a and $b
$c="$a , $b"
Write-Host $c
#Escape variables, by using single quotations 
$d='$a , $b'

# Properties and Functions
# See number of characters in $a
$a.Length
# Compare, 0 = exact match, 1 = same character / length but different, -1 = diff char and diff length
$e="Hello"
$e.Length
$e.CompareTo("hello") #1
$e.CompareTo("ARerarara") #-1

# Casting 
$a="123" 
# Get the value of $a and make it an integer 
$b=[int32]$a

$result = $b + 4

# Gather input and prompt the user for their age
$a = Read-Host -Prompt "Input your age"
# Convert the value from string to integer and assign it to a
$a = [int32]$a
# add 3 to the integer value of $a
$a=$a + 3 
Write-Host $a

# Assign multiple variables 

$a,$b,$c = 1,"hello",2.5


# Manipulate Variables

#List of all variables
Get-Variables

# Remove variable named c
Remove-Variables -Name c

# Wipe value of a
Clear-Variables -Name a


# Color code the write host 
Write-Host "Tharson" -ForegroundColor yellow -BackgroundColor red 

$ser = Get-Service

