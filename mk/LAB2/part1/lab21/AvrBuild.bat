@ECHO OFF
"C:\Program Files (x86)\Atmel\AVR Tools\AvrAssembler2\avrasm2.exe" -S "E:\mk\LAB2\part1\lab21\labels.tmp" -fI -W+ie -C V1 -o "E:\mk\LAB2\part1\lab21\lab21.hex" -d "E:\mk\LAB2\part1\lab21\lab21.obj" -e "E:\mk\LAB2\part1\lab21\lab21.eep" -m "E:\mk\LAB2\part1\lab21\lab21.map" "E:\mk\LAB2\part1\lab21\lab21.asm"
