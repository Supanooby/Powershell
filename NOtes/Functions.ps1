# Functions

# Declare variable 
$v1 = "Hello Tharson" 
# Find out type 
$v1.GetType()

# To Write to the Shell Host
Write-Host $v1.GetType()


$v2 = Get-Service 

# Casting 
$v = "123" 
$v1 = [int]$v

$r = $v1 + 4;
Write-Host $r

$v3 = "Hello"
$v4 = "Tharson"



# Concatenation
$v5 = $v3 + " " + $v4;
$v6 = "your age is " + 29

# Arrays
<# function myFunc
{
    write-host "Hello World"
}

myFunc #>

# Return Function
function myFunc{

 param([int]$v1, [int]$v2)

 $r = $v1 + $v2

 Write-Host "the result is $r"

}

myFunc 3 5

# Return Function
function myFuncReturn { 
 param([int]$v1, [int]$v2)

 $r = $v1 + $v2

 return $r

}

$value1 = Read-Host -Prompt "VALUE 1"
$value2 = Read-Host -Prompt "VALUE 1"
$result = myFuncReturn $value1 $value2


# Input Output and Array


