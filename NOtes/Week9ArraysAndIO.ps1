# Input Output and Array

# Converting to JSON
$date = Get-Date |Select-Object -Property * | ConvertTo-Json #-Compressed

Write-host $date

# Read CSV
$v = Get-Content -Path "C:\test.json" | ConvertFrom-Json

Write-Host $v.age

# Add to CSV
Add-Content -Path FileLInk


if(4 -eq 5)
{
Write-Host "are equal"
}



# Convert char to int (ASCII code)
$v = [char]'a'
$v2 = [int]$v



# arrays
# Crate Array and fill with 1-9
$v = 1,2,3,4,5,6,7,8,9
# Can also use this to fill from 1 - 9
$v2 = 1..9 

# See how much items in arary $v
Write-Host $v.count

# Write each item out using foreach loop
foreach($item in $v)
{
    Write-Host $item
}

# Get specific index 
$v[8]

# Create array using range of values from another array
$sub1 = $v[2..5]
Write-Host $sub1

# Create array using array going from last item in the list, to the -3 last item in the list 
$sub2 = $v[-1..-3]
Write-Host $sub2

# Create array using index 0, 2, and from 5 - 7
$sub3=$v[0,2+5..7]




# Pre and Post increment 
# Create $v adn assign 5 
$v = 5
# Increment $v and add 3
$v2 = ++$v + 3 
# Post Increment (add current value of $v and 3, and than incrmeent $v
$v2 = ($v++)+3



# -------- Loops --------
# For Loops
for($i-0;$i -le 5; $i++) 
{
    WRite-Host $i;
}

# While Loop
$i = 0;
while($i -le 5)
{
    Write-Host $i 
    $i++
}

# Do While
$i=0;
do {
    Write-Host $i 
    $i++
}
while ($i -le 5)

# Do until
$i = 0;
do {
    Write-Host $i 
    $i++
}
until ($i -gt 5)



# -------- Interupt Loops --------
# Break out of loop
for($v=1;$v -le 10; $v++) {
    if($v -eq 7) 
    {break}                                 # Break out of the loop
    Write-Host "the current value is $v"    # This won't get done past 7
}

# Continue the loop
for($v=1;$v -le 10; $v++) {
    if($v -eq 7) 
    {continue}                              # Skip this part of the loop from here, and continue to next 
    Write-Host "the current value is $v"    # This won't get done at 7
}


# If Statements
# If
[int]$v=Read-Host -Prompt "input value"

if($v -eq 60) {
    Write-Host "Yes"
} else {
    Write-Host "No"
}

# If Else 
[int]$v=Read-Host -Prompt "input mark"

if($v -ge 90) {
    Write-Host "very good"
} elseif($v -ge 75) {
    Write-Host "good"
} elseif($v -ge 50) {
    Write-Host "not bad"
} else {
    Write-host "fail" -BackgroundColor Cyan
}


# Nested IF statements
[int]$v=Read-Host -Prompt "input mark"
if(($v -ge 0) -and ($v -le 100))
{
    
    if($v -ge 90) {
        Write-Host "very good"
    } elseif($v -ge 75) {
        Write-Host "good"
    } elseif($v -ge 50) {
        Write-Host "not bad"
    } else {
        Write-host "fail" -BackgroundColor Cyan
    }
} 
else 
{
    Write-Host "Invalid Value"
}

# If While Loop

$c=-1
while($c -eq -1) 
{
    [int]$v=Read-Host -Prompt "input mark"
    if(($v -ge 0) -and ($v -le 100))
    {
        
        if($v -ge 90) {
            Write-Host "very good"
        } elseif($v -ge 75) {
            Write-Host "good"
        } elseif($v -ge 50) {
            Write-Host "not bad"
        } else {
            Write-host "fail" -BackgroundColor Cyan
        }
    } 
    else 
    {
        break
    }
}

#Switch case
[int]$v=Read-Host -Prompt "input mark"
switch($v)
{   
    # If $v is 90
    90
    { 
        Write-Host "Very Good"
        break
    }
    80 
    {
        Write-Host "Good"
        break
    }
    70 
    { 
        Write-Host ""
        break
    }
}