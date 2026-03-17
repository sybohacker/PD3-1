$updates = winget upgrade

$count = ($updates | Select-String "Available").Count

Write-Output "Sistema ir [$count] programmas atjauninasanai"