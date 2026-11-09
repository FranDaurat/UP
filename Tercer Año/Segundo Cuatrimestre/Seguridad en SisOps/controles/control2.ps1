# ============================================================
# CONTROL 2 - Permisos NTFS (herencia cortada, ACL por grupo)
# TP Seguridad en SO - YourGadget - Francisco Daurat 0149827
# ============================================================
Clear-Host
$pw = 'Yourgadget2026!'
Write-Host "==============================================================" -ForegroundColor Cyan
Write-Host " CONTROL 2 - PERMISOS NTFS" -ForegroundColor Cyan
Write-Host " Equipo: $env:COMPUTERNAME   Fecha: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')" -ForegroundColor Cyan
Write-Host "==============================================================" -ForegroundColor Cyan
Write-Host ""
$recursos = @(
    [pscustomobject]@{ Ruta='C:\YourGadget\administracion'; Grupo='administracion'; Usuario='empleado_admin' }
    [pscustomobject]@{ Ruta='C:\YourGadget\deposito';      Grupo='deposito';      Usuario='empleado_deposito' }
)
foreach ($r in $recursos) {
    Write-Host "icacls $($r.Ruta)" -ForegroundColor Yellow
    (& icacls.exe $r.Ruta) | ForEach-Object { Write-Host "  $_" }
}
function Probar-Acceso($usuario, $ruta) {
    $cred = New-Object System.Management.Automation.PSCredential("$env:COMPUTERNAME\$usuario", (ConvertTo-SecureString $pw -AsPlainText -Force))
    $o = "C:\Windows\Temp\yg_acc_$([IO.Path]::GetFileName($ruta)).txt"
    Remove-Item $o -Force -ErrorAction SilentlyContinue
    Start-Process -FilePath "$env:ComSpec" -ArgumentList "/c dir /b `"$ruta`"" -Credential $cred -RedirectStandardOutput $o -Wait -WindowStyle Hidden
    if (Test-Path $o) { return ((Get-Content $o -Raw) -match 'prueba\.txt') }
    return $false
}
Write-Host "Prueba de acceso cruzado (ejecutada como cada empleado):" -ForegroundColor Yellow
$aa = Probar-Acceso 'empleado_admin'    'C:\YourGadget\administracion'
$ad = Probar-Acceso 'empleado_admin'    'C:\YourGadget\deposito'
$dd = Probar-Acceso 'empleado_deposito' 'C:\YourGadget\deposito'
$da = Probar-Acceso 'empleado_deposito' 'C:\YourGadget\administracion'
function Acc($t,$ok){ if($ok){ Write-Host ("  {0,-40} : PERMITIDO" -f $t) -ForegroundColor Green } else { Write-Host ("  {0,-40} : DENEGADO" -f $t) -ForegroundColor Red } }
Acc "empleado_admin -> administracion"    $aa
Acc "empleado_admin -> deposito"          $ad
Acc "empleado_deposito -> deposito"       $dd
Acc "empleado_deposito -> administracion" $da
Write-Host ""
Write-Host "Criterios de aceptacion:" -ForegroundColor Yellow
$okTodo = $true
foreach ($r in $recursos) {
    $acl = Get-Acl -LiteralPath $r.Ruta
    $ex = @($acl.Access | Where-Object { -not $_.IsInherited })
    $prohibidos = @($ex | Where-Object { $_.IdentityReference.Value -match 'Everyone|Authenticated Users|BUILTIN\\Users' })
    $grupoOk = @($ex | Where-Object { $_.IdentityReference.Value -eq "$env:COMPUTERNAME\$($r.Grupo)" -and $_.FileSystemRights -match 'Modify' }).Count -eq 1
    $sysOk = @($ex | Where-Object { $_.IdentityReference.Value -eq 'NT AUTHORITY\SYSTEM' }).Count -eq 1
    $admOk = @($ex | Where-Object { $_.IdentityReference.Value -eq 'BUILTIN\Administrators' }).Count -eq 1
    $ok = $acl.AreAccessRulesProtected -and $ex.Count -eq 3 -and $prohibidos.Count -eq 0 -and $grupoOk -and $sysOk -and $admOk
    if (-not $ok) { $okTodo = $false }
    if ($ok) { Write-Host ("  {0,-30} : OK" -f $r.Grupo) -ForegroundColor Green }
    else     { Write-Host ("  {0,-30} : FALLO" -f $r.Grupo) -ForegroundColor Red }
}
$cruce = ($aa -and -not $ad -and $dd -and -not $da)
if (-not $cruce) { $okTodo = $false }
if ($cruce) { Write-Host ("  {0,-30} : OK" -f 'acceso cruzado denegado') -ForegroundColor Green }
else        { Write-Host ("  {0,-30} : FALLO" -f 'acceso cruzado denegado') -ForegroundColor Red }
Write-Host ""
if ($okTodo) {
    Write-Host "  RESULTADO: OK - ACL por grupo propietario, sin herencia." -ForegroundColor Black -BackgroundColor Green
} else {
    Write-Host "  RESULTADO: FALLO" -ForegroundColor White -BackgroundColor Red
}
Write-Host ""
