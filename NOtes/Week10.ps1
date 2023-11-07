# Display all Scheduled Tasks 
Get-ScheduledTask | Sort-Object -Property "TaskName"

Get-ScheduledTask -TaskPath "\"