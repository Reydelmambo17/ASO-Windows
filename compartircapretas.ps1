$comparticion=Read-Host "Escribe el nombre de la compartición"
$ruta=Read-Host "Escribe la ruta de la carpeta a compartir"
$existe=Test-Path $ruta
if ($existe -eq $false) {
	New-Item -Path $ruta -ItemType "directory"
}
New-SmbShare -Name $comparticion -Path $ruta -FullAccess "Todos","Invitados","Anonymous Logon"
