# Display all Scheduled Tasks 
Get-ScheduledTask | Sort-Object -Property "TaskName"

Get-ScheduledTask -TaskPath "\"

Get-ScheduledJob -Name ""

# To create tasks, you need Task, Trigger, Register Task, Action 
# Once
# Tasks
$myTask = New-ScheduledTaskAction -Execute "C:\Users\Tharson\Desktop\putty.exe"
# Trigger: Occurance, Time
$myTaskTrigger= New-ScheduledTaskTrigger -Once -At 3:30pm
# Register Task: Action, Trigger, Name 
Register-ScheduledTask -Action $myTask -Trigger $myTaskTrigger -TaskName "OpenPutty"

# Daily
$myTask = New-ScheduledTaskAction -Execute "C:\Users\Tharson\Desktop\putty.exe"
# Trigger: Occurance, Time
$myTaskTrigger= New-ScheduledTaskTrigger -Daily -At 8:30pm
# Register Task: Action, Trigger, Name 
Register-ScheduledTask -Action $myTask -Trigger $myTaskTrigger -TaskName "OpenPutty"

# Every 2 days
$myTask = New-ScheduledTaskAction -Execute "C:\Users\Tharson\Desktop\putty.exe"
# Trigger: Occurance, Time
$myTaskTrigger= New-ScheduledTaskTrigger -Daily -DaysInterval 2 -At 3:30pm
# Register Task: Action, Trigger, Name 
Register-ScheduledTask -Action $myTask -Trigger $myTaskTrigger -TaskName "OpenPutty"

# Weekly and specific days
$myTask = New-ScheduledTaskAction -Execute "C:\Users\Tharson\Desktop\putty.exe"
# Trigger: Occurance, Time
$myTaskTrigger= New-ScheduledTaskTrigger -Weekly -WeeksInterval 2 -DaysOfWeek Wednesday,Sunday,Saturday -At 3:30pm 
# Register Task: Action, Trigger, Name 
Register-ScheduledTask -Action $myTask -Trigger $myTaskTrigger -TaskName "OpenPutty"

#Run Task on Logon
$myTask = New-ScheduledTaskAction -Execute "C:\Users\Tharson\Desktop\putty.exe"
# Trigger: Occurance, Time
$myTaskTrigger= New-ScheduledTaskTrigger -AtLogOn
# Register Task: Action, Trigger, Name 
Register-ScheduledTask -Action $myTask -Trigger $myTaskTrigger -TaskName "OpenPutty" -Description "Opens Putty at 3:30pm"

$myTask = New-ScheduledTaskAction -Execute "C:\Users\Tharson\Desktop\putty.exe"
# Trigger: Occurance, Time
$myTaskTrigger= New-ScheduledTaskTrigger -AtStartup
# Register Task: Action, Trigger, Name 
Register-ScheduledTask -Action $myTask -Trigger $myTaskTrigger -TaskName "OpenPutty"