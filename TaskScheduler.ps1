$action = New-ScheduledTaskAction `
    -Execute "powershell.exe" `
    -Argument "-ExecutionPolicy Bypass -File C:\Users\a250079ds\Desktop\6_apkope.ps1"

$trigger = New-ScheduledTaskTrigger `
    -Weekly `
    -DaysOfWeek Monday `
    -At 9am

Register-ScheduledTask `
    -TaskName "6_apkope" `
    -Action $action `
    -Trigger $trigger