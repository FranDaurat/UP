# ============================================================
# CONTROL 1 - Gestion de usuarios y grupos (minimo privilegio)
# TP Seguridad en SO - YourGadget - Francisco Daurat 0149827
# ============================================================
Clear-Host
Write-Host "==============================================================" -ForegroundColor Cyan
Write-Host " CONTROL 1 - USUARIOS Y GRUPOS (MINIMO PRIVILEGIO)" -ForegroundColor Cyan
Write-Host " Equipo: $env:COMPUTERNAME   Fecha: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')" -ForegroundColor Cyan
Write-Host "==============================================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Miembros de cada grupo:" -ForegroundColor Yellow
foreach ($g in 'administracion','deposito') {
    Write-Host "  $g" -ForegroundColor White
    Get-LocalGroupMember -Group $g -ErrorAction SilentlyContinue |
        Select-Object @{n='Usuario';e={$_.Name}}, ObjectClass |
        Format-Table -AutoSize | Out-Host
}
Write-Host "Usuarios del TP dentro de Administrators:" -ForegroundColor Yellow
$admins = @(Get-LocalGroupMember -Group 'Administrators' -ErrorAction SilentlyContinue)
$tp = @('empleado_admin','empleado_deposito')
$enAdmins = @($admins | Where-Object { $tp -contains ($_.Name -replace '^.*\\','') })
if ($enAdmins.Count -eq 0) { Write-Host "  (ninguno)" -ForegroundColor Green }
else { $enAdmins | Select-Object Name,ObjectClass | Format-Table -AutoSize | Out-Host }
Write-Host ""
Write-Host "Criterios de aceptacion:" -ForegroundColor Yellow
$a = Get-LocalUser -Name 'empleado_admin'
$d = Get-LocalUser -Name 'empleado_deposito'
$ga = @(Get-LocalGroupMember -Group 'administracion' -ErrorAction SilentlyContinue)
$gd = @(Get-LocalGroupMember -Group 'deposito' -ErrorAction SilentlyContinue)
$c1 = ($ga.Count -eq 1 -and $ga[0].SID.Value -eq $a.SID.Value)
$c2 = ($gd.Count -eq 1 -and $gd[0].SID.Value -eq $d.SID.Value)
$c3 = -not ($admins | Where-Object { $_.SID.Value -eq $a.SID.Value })
$c4 = -not ($admins | Where-Object { $_.SID.Value -eq $d.SID.Value })
function Chk($t,$ok){ if($ok){ Write-Host ("  {0,-52} : OK" -f $t) -ForegroundColor Green } else { Write-Host ("  {0,-52} : FALLO" -f $t) -ForegroundColor Red } }
Chk "administracion contiene solo a empleado_admin" $c1
Chk "deposito contiene solo a empleado_deposito" $c2
Chk "empleado_admin NO esta en Administrators" $c3
Chk "empleado_deposito NO esta en Administrators" $c4
Write-Host ""
if ($c1 -and $c2 -and $c3 -and $c4) {
    Write-Host "  RESULTADO: OK - minimo privilegio aplicado." -ForegroundColor Black -BackgroundColor Green
} else {
    Write-Host "  RESULTADO: FALLO" -ForegroundColor White -BackgroundColor Red
}
Write-Host ""
