Param(
    [string]$applist = "https://raw.githubusercontent.com/maheshrjl/windows-package-installer/main/applist"
)

if ($applist -like "file:*") {
    # Read the file from disk
    $appListContent = Get-Content $applist

    # Convert the string to an array
    $appListContent = $appListContent -split "`n"

} else {
    # Download the file from the web
    $client = New-Object System.Net.WebClient
    $appListContent = $client.DownloadString($applist)

    # Convert the string to an array
    $appListContent = $appListContent -split "`n"
}

Write-Host "Install the following apps: $appListContent Press any key to continue..."

# Wait for any key to continue
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")

# Install the apps

foreach ($apps in $appListContent) {
    Write-Host "Installing app: $apps"
    winget.exe install -e --id $apps
}
