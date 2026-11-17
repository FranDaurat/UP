# ============================================================
# CONTROL 4 - Hardening de RDP (NLA, lockout, acceso restringido)
# TP Seguridad en SO - YourGadget - Francisco Daurat 0149827
# ============================================================
Clear-Host
Write-Host "==============================================================" -ForegroundColor Cyan
Write-Host " CONTROL 4 - HARDENING DE RDP" -ForegroundColor Cyan
Write-Host " Equipo: $env:COMPUTERNAME   Fecha: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')" -ForegroundColor Cyan
Write-Host "==============================================================" -ForegroundColor Cyan
Write-Host ""
$ts  = Get-ItemProperty 'HKLM:\SYSTEM\CurrentControlSet\Control\Terminal Server'
$rdp = Get-ItemProperty 'HKLM:\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp'
Write-Host "Configuracion RDP:" -ForegroundColor Yellow
Write-Host ("  Network Level Authentication (UserAuthentication) : {0}" -f $rdp.UserAuthentication)
Write-Host ("  RDP habilitado (fDenyTSConnections)              : {0}" -f $ts.fDenyTSConnections)
Write-Host ""
Write-Host "Politica de bloqueo de cuenta:" -ForegroundColor Yellow
(net accounts) | Where-Object { $_ -match 'Lockout' } | ForEach-Object { Write-Host "  $_" }
Write-Host ""
Write-Host "Remote Desktop Users:" -ForegroundColor Yellow
Get-LocalGroupMember -Group 'Remote Desktop Users' -ErrorAction SilentlyContinue |
    Select-Object Name,ObjectClass | Format-Table -AutoSize | Out-Host
function Invoke-NetUse($usuario, $clave) {
    $psi = New-Object System.Diagnostics.ProcessStartInfo
    $psi.FileName = "$env:SystemRoot\System32\net.exe"
    $psi.Arguments = "use \\127.0.0.1\ipc$ /user:$usuario $clave"
    $psi.UseShellExecute = $false
    $psi.CreateNoWindow = $true
    $psi.RedirectStandardOutput = $true
    $psi.RedirectStandardError = $true
    $p = [System.Diagnostics.Process]::Start($psi)
    $o = $p.StandardOutput.ReadToEnd()
    $e = $p.StandardError.ReadToEnd()
    $p.WaitForExit()
    return (($o + $e).Trim())
}
$probe = 'prueba_lockout'
Remove-LocalUser -Name $probe -ErrorAction SilentlyContinue
New-LocalUser -Name $probe -Password (ConvertTo-SecureString 'Mala#2026' -AsPlainText -Force) -PasswordNeverExpires | Out-Null
for ($i = 1; $i -le 3; $i++) { Invoke-NetUse "$env:COMPUTERNAME\$probe" 'Incorrecta#1' | Out-Null }
$salida = Invoke-NetUse "$env:COMPUTERNAME\$probe" 'Mala#2026'
$locked = $salida -match 'locked out|1909'
Invoke-NetUse '* /delete /y' '' | Out-Null
Remove-LocalUser -Name $probe -ErrorAction SilentlyContinue
Write-Host "Prueba de bloqueo (cuenta de prueba, 3 intentos fallidos):" -ForegroundColor Yellow
Write-Host ("  Cuenta bloqueada : {0}" -f $locked)
if ($locked) { Write-Host "  Detalle          : system error 1909 - cuenta bloqueada" -ForegroundColor DarkGray }
else         { Write-Host ("  Detalle          : {0}" -f (($salida -split "`n")[0])) -ForegroundColor DarkGray }
Write-Host ""
Write-Host "Criterios de aceptacion:" -ForegroundColor Yellow
$cuentas = (net accounts)
$th = [int](($cuentas | Where-Object { $_ -match 'Lockout threshold' }) -replace '.*:\s*','')
$rdu = @(Get-LocalGroupMember -Group 'Remote Desktop Users' -ErrorAction SilentlyContinue)
$rduOk = $rdu.Count -eq 1 -and $rdu[0].Name -eq "$env:COMPUTERNAME\empleado_admin"
function Chk($t,$ok){ if($ok){ Write-Host ("  {0,-52} : OK" -f $t) -ForegroundColor Green } else { Write-Host ("  {0,-52} : FALLO" -f $t) -ForegroundColor Red } }
Chk "NLA activado (UserAuthentication = 1)" ($rdp.UserAuthentication -eq 1)
Chk "RDP habilitado (fDenyTSConnections = 0)" ($ts.fDenyTSConnections -eq 0)
Chk "bloqueo a los 3 intentos" ($th -eq 3)
Chk "acceso RDP solo para empleado_admin" $rduOk
Chk "cuenta bloqueada tras 3 intentos fallidos" $locked
Write-Host ""
if (($rdp.UserAuthentication -eq 1) -and ($ts.fDenyTSConnections -eq 0) -and ($th -eq 3) -and $rduOk -and $locked) {
    Write-Host "  RESULTADO: OK - RDP endurecido y bloqueo verificado." -ForegroundColor Black -BackgroundColor Green
} else {
    Write-Host "  RESULTADO: FALLO" -ForegroundColor White -BackgroundColor Red
}
Write-Host ""
