# ============================================================
# CONTROL 5 - Auditoria (politica + SACL + evento 4663)
# TP Seguridad en SO - YourGadget - Francisco Daurat 0149827
# ============================================================
Clear-Host
Write-Host "==============================================================" -ForegroundColor Cyan
Write-Host " CONTROL 5 - AUDITORIA DE ACCESO A ARCHIVOS" -ForegroundColor Cyan
Write-Host " Equipo: $env:COMPUTERNAME   Fecha: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')" -ForegroundColor Cyan
Write-Host "==============================================================" -ForegroundColor Cyan
Write-Host ""
$archivo = 'C:\YourGadget\empleados.txt'
Write-Host "Politica de auditoria:" -ForegroundColor Yellow
(auditpol /get /subcategory:"File System") | Where-Object { $_ -match 'File System|Success' } | ForEach-Object { Write-Host "  $_" }
Write-Host ""
Write-Host "SACL de $archivo :" -ForegroundColor Yellow
(Get-Acl -LiteralPath $archivo -Audit).Audit |
    Select-Object IdentityReference,FileSystemRights,AuditFlags | Format-Table -AutoSize | Out-Host
$inicio = (Get-Date).AddSeconds(-5)
Add-Content -LiteralPath $archivo -Value "Prueba de auditoria $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
Write-Host "Evento generado (modificacion de empleados.txt)." -ForegroundColor DarkGray
Write-Host ""
$evento = $null
for ($i = 0; $i -lt 12; $i++) {
    $evento = Get-WinEvent -FilterHashtable @{LogName='Security'; Id=4663; StartTime=$inicio} -MaxEvents 100 -ErrorAction SilentlyContinue |
              Where-Object { $_.Message -match 'empleados\.txt' } | Select-Object -First 1
    if ($evento) { break }
    Start-Sleep -Milliseconds 500
}
Write-Host "Evento en el log de Seguridad:" -ForegroundColor Yellow
if ($evento) {
    $xml = [xml]$evento.ToXml()
    $d = @{}
    foreach ($x in $xml.Event.EventData.Data) { $d[$x.Name] = $x.'#text' }
    [pscustomobject]@{
        Fecha   = $evento.TimeCreated
        Id      = $evento.Id
        Usuario = "$($d['SubjectDomainName'])\$($d['SubjectUserName'])"
        Objeto  = $d['ObjectName']
        Acceso  = $d['AccessMask']
    } | Format-Table -AutoSize | Out-Host
} else {
    Write-Host "  No se encontro el evento 4663." -ForegroundColor Red
}
Write-Host ""
Write-Host "Criterios de aceptacion:" -ForegroundColor Yellow
$pol = (auditpol /get /subcategory:"File System") -join ' '
$polOk = $pol -match 'Success and Failure'
$sac = @((Get-Acl -LiteralPath $archivo -Audit).Audit | Where-Object { $_.FileSystemRights -match 'Write' })
function Chk($t,$ok){ if($ok){ Write-Host ("  {0,-52} : OK" -f $t) -ForegroundColor Green } else { Write-Host ("  {0,-52} : FALLO" -f $t) -ForegroundColor Red } }
Chk "File System: Success and Failure" $polOk
Chk "SACL de escritura sobre empleados.txt" ($sac.Count -ge 1)
Chk "evento 4663 registrado" ($null -ne $evento)
Write-Host ""
if ($polOk -and $sac.Count -ge 1 -and $evento) {
    Write-Host "  RESULTADO: OK - auditoria activa y evento registrado." -ForegroundColor Black -BackgroundColor Green
} else {
    Write-Host "  RESULTADO: FALLO" -ForegroundColor White -BackgroundColor Red
}
Write-Host ""
