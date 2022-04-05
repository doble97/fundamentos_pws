#Muestra por pantalla la tercera línea de un fichero que tengas en tu escritorio.
$fichero = Get-Content .\usuarios
Write-Host $fichero[2]