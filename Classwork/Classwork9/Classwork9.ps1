
# Create tasksAction
$startPowershellAction = New-ScheduledTaskAction -Execute "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe" -Argument "C:\Users\Tharson\Desktop\Get_Service.ps1"
$startPowershellTrigger = New-ScheduledTaskTrigger -AtStartup

# Register Tasks
Register-ScheduledTask -Action $startPowershellAction -Trigger $startPowershellTrigger -TaskName "powershellTask1" 

# Modify the time 
Set-ScheduledTask -TaskName "powershellTask" -Trigger (New-ScheduledTaskTrigger -Once -At 5:19pm)