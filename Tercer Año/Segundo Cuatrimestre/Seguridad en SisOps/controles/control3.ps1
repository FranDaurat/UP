# ============================================================
# CONTROL 3 - Firewall de host (perfiles y reglas)
# TP Seguridad en SO - YourGadget - Francisco Daurat 0149827
# ============================================================
Clear-Host
Write-Host "==============================================================" -ForegroundColor Cyan
Write-Host " CONTROL 3 - FIREWALL DE HOST" -ForegroundColor Cyan
Write-Host " Equipo: $env:COMPUTERNAME   Fecha: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')" -ForegroundColor Cyan
Write-Host "==============================================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Perfiles:" -ForegroundColor Yellow
Get-NetFirewallProfile | Select-Object Name,Enabled,DefaultInboundAction,DefaultOutboundAction | Format-Table -AutoSize | Out-Host
Write-Host "Reglas del TP:" -ForegroundColor Yellow
$reglas = foreach ($r in Get-NetFirewallRule -DisplayName 'YG - Permitir RDP','YG - Bloquear Telnet' -ErrorAction SilentlyContinue) {
    $f = $r | Get-NetFirewallPortFilter
    [pscustomobject]@{ Regla=$r.DisplayName; Direccion=$r.Direction; Accion=$r.Action; Protocolo=$f.Protocol; Puerto=$f.LocalPort; Activa=$r.Enabled }
}
$reglas | Format-Table -AutoSize | Out-Host
Write-Host "Criterios de aceptacion:" -ForegroundColor Yellow
$p = @(Get-NetFirewallProfile)
$perfilesOk = ($p.Count -eq 3) -and (@($p | Where-Object { $_.Enabled -and $_.DefaultInboundAction -eq 'Block' -and $_.DefaultOutboundAction -eq 'Allow' }).Count -eq 3)
$rdp = Get-NetFirewallRule -DisplayName 'YG - Permitir RDP' -ErrorAction SilentlyContinue
$tel = Get-NetFirewallRule -DisplayName 'YG - Bloquear Telnet' -ErrorAction SilentlyContinue
$rdpOk = $rdp -and $rdp.Enabled -eq 'True' -and $rdp.Direction -eq 'Inbound' -and $rdp.Action -eq 'Allow' -and (($rdp | Get-NetFirewallPortFilter).LocalPort -contains '3389')
$telOk = $tel -and $tel.Enabled -eq 'True' -and $tel.Direction -eq 'Inbound' -and $tel.Action -eq 'Block' -and (($tel | Get-NetFirewallPortFilter).LocalPort -contains '23')
function Chk($t,$ok){ if($ok){ Write-Host ("  {0,-52} : OK" -f $t) -ForegroundColor Green } else { Write-Host ("  {0,-52} : FALLO" -f $t) -ForegroundColor Red } }
Chk "3 perfiles: inbound Block / outbound Allow" $perfilesOk
Chk "regla 'YG - Permitir RDP' (TCP 3389 Allow)" $rdpOk
Chk "regla 'YG - Bloquear Telnet' (TCP 23 Block)" $telOk
Write-Host ""
if ($perfilesOk -and $rdpOk -and $telOk) {
    Write-Host "  RESULTADO: OK - firewall de host aplicado." -ForegroundColor Black -BackgroundColor Green
} else {
    Write-Host "  RESULTADO: FALLO" -ForegroundColor White -BackgroundColor Red
}
Write-Host ""
