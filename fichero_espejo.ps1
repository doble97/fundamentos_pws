Clear-Host
$fichero = Get-Content .\usuarios

$fichero | ForEach-Object {
    $reverse= $_.ToCharArray()
    [array]::Reverse($reverse)
    $reverse = -join $reverse
    Write-Host "$_ - $reverse"
}