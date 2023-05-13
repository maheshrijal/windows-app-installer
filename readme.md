## Powershell script to install apps on windows via [winget](https://docs.microsoft.com/en-us/windows/package-manager/winget/) cli


### How to run?

1. Open your powershell as administrator and run `Set-ExecutionPolicy Unrestricted`
2. Create your applist with the list of apps you want to install. Browse a list of winget packages at [winstall.app](https://winstall.app/) & [winget.run](https://winget.run/)
3. Download the script (optional)
4. Run the script providing path to your applist

### Run with (Local) App List Path

```
.\install.ps1 -applist 'C:\Users\Mahesh\Downloads\applist'
```

### Run with (Remote) App List Path
```
.\install.ps1 -applist 'https://raw.githubusercontent.com/maheshrjl/windows-package-installer/main/applist'
```

## Run with (Default) App List picked from [applist](https://github.com/maheshrjl/windows-package-installer/blob/main/applist)  ⚠
```
.\install-apps.ps1
```

## Run without downloading the script from [applist](https://github.com/maheshrjl/windows-package-installer/blob/main/applist) ⚠
```
iwr -useb https://raw.githubusercontent.com/maheshrjl/windows-package-installer/main/install.ps1 | iex
```
