$file = "$env:USERPROFILE\Documents\Errors.txt"
$zip = "$env:USERPROFILE\Documents\Atskaite-$(Get-Date -Format yyyy-MM-dd).zip"

Compress-Archive -Path $file -DestinationPath $zip -Force

$size = (Get-Item $zip).Length / 1KB
Write-Output "Size: $([math]::Round($size,2)) KB"