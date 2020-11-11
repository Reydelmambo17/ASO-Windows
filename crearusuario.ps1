$usuario=Read-Host "Introduce nombre de usuario"
$null=Get-LocalUser -Name "$usuario" 2> $null
if ($? -eq $true) {
    Write-Host "El usuario ya existe"
    exit
}
$contraseña=Read-Host "Introduce contraseña" -AsSecureString
$null=New-LocalUser $usuario -Password $contraseña
Add-LocalGroupMember usuarios -Member $usuario
