# ============================================================
# CONTROL 6 - Backup y restauracion con verificacion SHA256
# TP Seguridad en SO - YourGadget - Francisco Daurat 0149827
# ============================================================
Clear-Host
Write-Host "==============================================================" -ForegroundColor Cyan
Write-Host " CONTROL 6 - BACKUP Y RESTAURACION" -ForegroundColor Cyan
Write-Host " Equipo: $env:COMPUTERNAME   Fecha: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')" -ForegroundColor Cyan
Write-Host "==============================================================" -ForegroundColor Cyan
Write-Host ""
$zip = 'C:\Backups\YourGadget\YourGadget.zip'
$canario = 'C:\YourGadget\administracion\canario_restore.txt'
Set-Content -LiteralPath $canario -Value "Archivo canario para prueba de restauracion" -Encoding ASCII
Compress-Archive -Path 'C:\YourGadget\*' -DestinationPath $zip -Force
$info = Get-Item -LiteralPath $zip
Add-Type -AssemblyName System.IO.Compression.FileSystem
$z = [System.IO.Compression.ZipFile]::OpenRead($zip)
$cant = $z.Entries.Count
$z.Dispose()
Write-Host "Backup:" -ForegroundColor Yellow
Write-Host ("  Archivo   : {0}" -f $zip)
Write-Host ("  Tamano    : {0} bytes" -f $info.Length)
Write-Host ("  Fecha     : {0}" -f $info.LastWriteTime)
Write-Host ("  Entradas  : {0}" -f $cant)
Write-Host ""
Write-Host "Prueba de restauracion:" -ForegroundColor Yellow
$hashAntes = (Get-FileHash -LiteralPath $canario -Algorithm SHA256).Hash
Write-Host ("  Archivo canario   : {0}" -f $canario)
Write-Host ("  SHA256 original   : {0}" -f $hashAntes)
Remove-Item -LiteralPath $canario -Force
$borrado = -not (Test-Path -LiteralPath $canario)
Write-Host ("  Eliminado         : {0}" -f $borrado)
$tmp = 'C:\TP\restore'
if (Test-Path -LiteralPath $tmp) { Remove-Item -LiteralPath $tmp -Recurse -Force }
Expand-Archive -Path $zip -DestinationPath $tmp -Force
$origen = Join-Path $tmp 'administracion\canario_restore.txt'
if (Test-Path -LiteralPath $origen) { Copy-Item -LiteralPath $origen -Destination $canario -Force }
$existe = Test-Path -LiteralPath $canario
$hashDespues = ''
if ($existe) { $hashDespues = (Get-FileHash -LiteralPath $canario -Algorithm SHA256).Hash }
Write-Host ("  Restaurado        : {0}" -f $existe)
Write-Host ("  SHA256 restaurado : {0}" -f $hashDespues)
Write-Host ""
Write-Host "Criterios de aceptacion:" -ForegroundColor Yellow
$ok = $borrado -and $existe -and ($hashAntes -eq $hashDespues)
function Chk($t,$ok2){ if($ok2){ Write-Host ("  {0,-52} : OK" -f $t) -ForegroundColor Green } else { Write-Host ("  {0,-52} : FALLO" -f $t) -ForegroundColor Red } }
Chk "backup .zip existente" (Test-Path -LiteralPath $zip)
Chk "archivo eliminado" $borrado
Chk "archivo restaurado desde el backup" $existe
Chk "integridad SHA256 original = restaurado" ($hashAntes -eq $hashDespues)
Write-Host ""
if ($ok) {
    Write-Host "  RESULTADO: OK - backup y restauracion integra." -ForegroundColor Black -BackgroundColor Green
} else {
    Write-Host "  RESULTADO: FALLO" -ForegroundColor White -BackgroundColor Red
}
Write-Host ""
