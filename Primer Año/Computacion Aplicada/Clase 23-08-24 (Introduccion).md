-- - 
*Primer parcial* ---> 4/10
*Trabajo practico grupal* ---> 15/11
*Oral Individual* ---> 
Clases de consulta: Lunes y Jueves (Creo que por la tarde)
-- -
# Exposiocion TP

```bash 
# 1. Verificar el cambio de contraseña de root
su -   # (Inicia sesión como root e ingresa la contraseña "palermo")

# 2. Comprobar el nombre del host
echo "Hostname actual:"
hostnamectl

# 3. Revisar servicios instalados y activos
echo -e "\nEstado del servicio SSH:"
systemctl status ssh

echo -e "\nEstado del servicio Apache:"
systemctl status apache2
echo -e "\nVersión de Apache y PHP instalados:"
apache2 -v
php -v

echo -e "\nEstado del servicio MariaDB:"
systemctl status mariadb
echo -e "\nVersión de MariaDB/MySQL:"
mysql -V

# 4. Verificar la base de datos y el script db.sql cargado
echo -e "\nVerificar bases de datos en MariaDB:"
mysql -u root -p -e "SHOW DATABASES; USE nombre_de_tu_base_de_datos; SHOW TABLES;"

# 5. Verificar el directorio /www_dir para Apache
echo -e "\nContenido de /www_dir:"
ls /www_dir

echo -e "\nConfiguración de Apache (000-default.conf):"
cat /etc/apache2/sites-available/000-default.conf
echo -e "\nReiniciando Apache (si se hicieron cambios en la configuración)"
systemctl restart apache2

# 6. Revisar el directorio /backup_dir y su montaje automático
echo -e "\nComprobar que /backup_dir esté montado:"
ls /backup_dir
echo -e "\nEstado de montaje de /backup_dir:"
df -h | grep /backup_dir
echo -e "\nArchivo /etc/fstab (para ver montaje automático):"
cat /etc/fstab

# 7. Verificar la configuración de red (IP estática)
echo -e "\nConfiguración de red en /etc/network/interfaces:"
cat /etc/network/interfaces
echo -e "\nEstado de la interfaz de red:"
ip a show <interfaz>    # Reemplaza <interfaz> por el nombre de tu interfaz, por ejemplo, eth0

# 8. Comprobar el script de backup backup_full.sh
echo -e "\nContenido del script de backup (/opt/scripts/backup_full.sh):"
cat /opt/scripts/backup_full.sh

echo -e "\nEjecutando script de backup manualmente (prueba):"
bash /opt/scripts/backup_full.sh /etc /backup_dir

# 9. Verificar los archivos de backup generados en /backup_dir
echo -e "\nArchivos de backup en /backup_dir:"
ls /backup_dir

# 10. Comprobar Cron Jobs para los backups
echo -e "\nTareas programadas en crontab (cron jobs):"
crontab -l

```