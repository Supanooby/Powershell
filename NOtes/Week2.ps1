<#> Syntax

-Parameter
<> is Argument 
[Param] is Positional 
[Param Arg] is optional 
[] accepts multiple values 

<#>

Get-Process
# No help included, must update help system
Update-Help -Module * -Force


# E.g. Help Command

Get-Help {Command} {-Online} # will pull up the details of command online
Get-Help Get-Printer -Online

# Command Arguemnt -Parameter
Get-ChildItem -Path "C:\Windows" -Filter *.txt
Get-ChildItem -Path "C:\Windows" -Include *.txt

