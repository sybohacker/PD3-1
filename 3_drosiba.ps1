$status = Get-MpComputerStatus

if(-not $status.RealTimeProtectionEnabled -or $status.QuickScanAge -gt 3) {
	Write-Host "APDRAUDETA" -ForegroundColor Red
}
else {
	Write-Host "DROSA" -ForegroundColor Green
}