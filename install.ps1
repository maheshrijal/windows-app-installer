Param(
    [string]$applist = "https://raw.githubusercontent.com/maheshrijal/windows-app-installer/main/applist"
)

try {
    if ($applist -like "file:*") {
        # Read the file from disk
        $appListContent = Get-Content $applist
    } else {
        # Download the file from the web
        $client = New-Object System.Net.WebClient
        $appListContent = $client.DownloadString($applist)
    }

    # Convert the string to an array
    $appListContent = $appListContent -split "`r?`n"

    Write-Host "Install the following apps: $($appListContent -join ', ') Press any key to continue..."

    # Wait for any key to continue
    $null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")

    # Install the apps
    foreach ($app in $appListContent) {
        Write-Host "Installing app: $app"
        winget.exe install -e --id $app
    }
}
catch {
    Write-Host "Error: $_"
}
