rule MAL_Rust_Implant_Contoso_Beacon
{
    meta:
        description = "Implant Rust tipo Beacon, cadenas XOR, dead-drop ntfy.sh, metadata Contoso"
        author = "Analisis Ingenieria Inversa"
        date = "2026-10-08"
        hash = "3fd084733b5dc2726fbb915197538f2deb632085bb80f21fc06d430345cb4003"
    strings:
        $mz = { 4D 5A }
        $pipe = "\\\\.\\pipe\\99ba5137a5e0c152" ascii
        $ver1 = "Contoso Update Service" wide
        $ver2 = "Contoso Ltd" wide
        $task = "Maint-Scheduler-4d47" ascii
        $x_bof  = { 66 77 E1 C4 1A 26 3F 23 A9 }
        $x_ntfy = { 3F D7 12 5A EF D6 BE }
        $x_poll = { 7E D1 15 54 FE D5 B9 E1 48 A9 AD }
        $x_ver  = { 1D 1F D1 EE 38 42 0E 02 88 3E 8C }
        $x_wipe = { 3C 33 F3 CE 23 68 2C 26 B3 71 DE 7E 1A DC D0 58 27 29 B9 8B 1D 65 2C 3A AE 7E CD 75 21 C7 9F 43 2A 29 E8 C7 15 78 39 }
    condition:
        $mz at 0 and 2 of ($pipe, $ver*, $task, $x_*)
}
