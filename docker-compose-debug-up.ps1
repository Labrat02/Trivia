param([string]$t=".\tmp")

Write-Host "Attempt to Delete Folder: $t"
try {
    $DeleteResult = Remove-Item $t -Force -Recurse -ErrorAction SilentlyContinue
}
catch {
    Write-Output "Delete Folder $t Failed: $DeleteResult"
}

docker-compose -f docker-compose-debug.yml up -d --remove-orphans
Write-Output "To view output of container type docker-compose log"