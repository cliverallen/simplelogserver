$currentPath = Get-Location
$Password = ([char[]]([char]65..[char]90) + [char[]]([char]97..[char]122) + 0..9 | sort-object {Get-Random})[0..8] -join ''
((Get-Content -path $currentPath/pwsh/web-pages-docker.ps1 -Raw) -replace '###PASS###',$Password) | Set-Content -Path ./pwsh/web-pages-docker.ps1
Write-Host "Current dir " $currentPath
Write-Host "Password set to " $Password