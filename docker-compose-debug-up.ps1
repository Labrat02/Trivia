param([string]$t=".\tmp", [string]$l=".\log\docker-compose-debug.log", [string]$composeFile="docker-compose-debug.yml")

if ([System.IO.Directory]::Exists($t)) {
    Write-Host "Attempt to Delete Folder: $t" -ForegroundColor "Green"
    $DeleteResult = Remove-Item $t -Force -Recurse
    #  -ErrorAction Continue
    Write-Host $DeleteResult -ForegroundColor "red"
}
$dockerComposeCommand = "docker-compose -f $composeFile up -d --build --remove-orphans 2>&1"
Write-Host "Executing: $dockerComposeCommand`r`n" -ForegroundColor "Green"
cmd.exe /c $dockerComposeCommand | Tee-Object -FilePath $l -Append
Write-Host "`r`n#`r`n# To view output of container type: `r`n#`r`n`r`n"
Write-Host "docker-compose -f $composeFile logs`r`n" -ForegroundColor "yellow"
