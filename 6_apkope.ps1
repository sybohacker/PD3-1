$drive = Get-PSDrive C
$free = ($drive.Free / $drive.Used) * 100

$log = "$env:USERPROFILE\Documents\Apkope.log"

if ($free -lt 25) {
	
	Remove-Item "$env:TEMP\*" -Recurse -Force -ErrorAction SilentlyContinue
	Clear-RecycleBin -Force -ErrorAction SilentlyContinue
	
	"$(Get-Date) | Tirits" | Out-File $log -Append
}
else {
	"$(Get-Date) | OK" | Out-File $log -Append
}