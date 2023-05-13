#Script to install through packages in applist

[string]$dir = Get-Location
$filename = "applist.txt"

$applist = Get-Content -Path "$dir\ps-winget-pkg-installer\$filename"

foreach ($apps in $applist) {
    winget.exe install -e --id $apps
}
