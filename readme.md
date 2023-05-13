## Powershell script to install apps on windows via [winget](https://docs.microsoft.com/en-us/windows/package-manager/winget/) cli

#

## How to run?

### Run with (Local) App List Path

```
.\install.ps1 -applist 'C:\Users\Mahesh\Downloads\applist'
```

### Run with (Remote) App List Path
```
.\install.ps1 -applist 'https://raw.githubusercontent.com/maheshrjl/windows-package-installer/main/applist'
```

## Run with (Default) App List Path in GitHub Repo
```
.\install-apps.ps1
```

## Run without downloading the script ⚠
```
iwr -useb https://raw.githubusercontent.com/maheshrjl/windows-package-installer/main/install.ps1 | iex
```

### Modify the list of packages in the [applist](https://github.com/Maheshrjl/ps-winget-pkg-installer/blob/main/applist) file. Browse a list of winget packages at [winstall.app](https://winstall.app/) & [winget.run](https://winget.run/)
