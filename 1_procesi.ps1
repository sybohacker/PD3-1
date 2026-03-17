$process = Get-Process |
Where-Object { $_.ProcessName -ne "svchost" } |
Sort-Object WorkingSet -Descending |
Select-Object -First 5

$total = ($process | Measure-Object WorkingSet -Sum).Sum / 1MB

Write-Output "Top 5 RAM: $([math]::Round($total, 2)) MB"

$proc | Select ProcessName
@{Name="MB"; Expression={[math]::Round($_.WorkingSet/1MB,2)}}