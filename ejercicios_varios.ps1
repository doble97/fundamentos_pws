#Obtén  una lista de ficheros pero excluyendo carpetas
Get-ChildItem -File -Path 'C:\Users\Jorge Gonzalez'
#Obtén una lista de todos los servicios  que están actualmente stopped.
Get-Service | Select-Object -Property Name, Status |Where-Object -Property Status -eq Running | Format-Table

#Lista los processes con un  working set mayor que 25000K. (bytes = Kilobytes*1024):
Get-Process | Select-Object -Property Name, WorkingSet | Where-Object -Property WorkingSet -GT 2500000 | Measure-Object 
Clear-Host

#Lista processes con un  ProcessName  que comience por  p.
Get-Process | Where-Object -Property ProcessName -Like p*