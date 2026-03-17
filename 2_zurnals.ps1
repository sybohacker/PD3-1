$errors = Get-WinEvent -LogName System |
Where-Object {
	$_.LevelDisplayName -eq "Error" -and
	$_.TimeCreated -gt (Fet-Date).AddDays(-7)
}

$file = "$env:USERPROFILE\Documents\Errors.txt"

if ($errors.Count -gt 10) {
	"KRITISKI!" | Out-File $file
}
else {
	"OK" | Out-File $file
}

$errors | Select TimeCreated, Message | Out-File $file -Append