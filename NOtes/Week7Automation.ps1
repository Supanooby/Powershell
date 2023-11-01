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

# Replace string
$v="Hi Max"
$v.Replace("Max","loshy")
# $v still has same value when printing out $v



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

# Make commands repeatable, save as ps1, and execute using powershell
Get-WmiObject -Class win32_logicaldisk -ComputerName localhost | Sort-Object Name | Select-Object Deviceid.Drive Type,Size



# Functions 
# Non-Return function
Function myFun{
Write-Host "You are printing this statement from function"
}

# Call Function
myFun

#Return Function and Parameter
Function myFun{

#Create Parameters
PARAM([int]$age, [string]$name)
Write-Host "Hi $name, your age is $age"

}

myFun 22 "Tharson"



# Store your tools in a Module 


# If Statement
# Example 1
$proc = Get-Process | Select-Object -Property WS | ForEach-Object{Write-Host $_}

Function myFun
{
    Param($a)
    if($a -gt 1000) {Write-Host $a}
}


# Example 2
Function myFunc
{
    Param([int32]$mark)
    if($mark -ge 50){Write-Host "Pass"}
    else{Write-Host "Fail"}
}

myFunc 34
myFunc 89


# Return Function
function myFuncReturn { 
 param([int]$v1, [int]$v2)

 $r = $v1 + $v2

 return $r

}

$value1 = Read-Host -Prompt "VALUE 1"
$value2 = Read-Host -Prompt "VALUE 1"
$result = myFuncReturn $value1 $value2


