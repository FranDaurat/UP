#!/usr/bin/env python3
"""Arma TP-MitM-ARP.docx con los 3 prints del TP de ARP spoofing.

Poner resultado1.png, resultado2.png y resultado3.png en esta carpeta y correr:
    python3 armar_tp_docx.py
"""
from pathlib import Path

try:
    from docx import Document
    from docx.shared import Inches
except ImportError:
    raise SystemExit(
        "Falta python-docx. Instalar con:\n"
        "  sudo apt install -y python3-docx\n"
        "o:\n"
        "  pip install --break-system-packages python-docx"
    )

BASE = Path(__file__).resolve().parent
OUT = BASE / "TP-MitM-ARP.docx"

CASOS = [
    (
        "Resultado 1: ARP spoof sin IP forwarding (ip_forward=0)",
        "resultado1.png",
        "Wireshark en vboxnet1, filtro icmp: se ve el Echo request del Host hacia la victima, sin Echo reply. El ping falla con 100% de perdida.",
    ),
    (
        "Resultado 2: ARP spoof con IP forwarding activo (ip_forward=1)",
        "resultado2.png",
        "Wireshark en vboxnet1, filtro icmp: se ven el Echo request y el Echo reply. El ping responde normalmente.",
    ),
    (
        "Resultado 3: credenciales de DVWA capturadas en texto plano",
        "resultado3.png",
        "Wireshark filtro http: POST a /dvwa/login.php con username y password en texto plano (Follow > HTTP Stream).",
    ),
]


def main() -> None:
    doc = Document()
    doc.add_heading("TP: Man in the Middle con ARP spoofing", 0)
    doc.add_paragraph("Alumno: <nombre y legajo>")

    for titulo, archivo, epigrafe in CASOS:
        doc.add_heading(titulo, level=1)
        ruta = BASE / archivo
        if ruta.exists():
            doc.add_picture(str(ruta), width=Inches(6.5))
        else:
            doc.add_paragraph(f"[Falta {archivo} en esta carpeta]")
        doc.add_paragraph(epigrafe)

    doc.save(OUT)
    print(f"Listo: {OUT}")


if __name__ == "__main__":
    main()
