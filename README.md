# YM2612-SYNTH
Synthesizer using a real YM2612 for sound generation and Processing for the synth UI

### Conexiones

Conexion YM-2612:
```
CLK (  ) ...... Arduino D9
 IC (  ) ...... Arduino A5   
 CS (  ) ...... Arduino A4   
 WR (  ) ...... Arduino A3   
 RD (  ) ...... Arduino A2  
 A0 (  ) ...... Arduino A1  
 A1 (  ) ...... Arduino A0
 D0-D5   ...... Arduino D2-D7
 D6-D7   ...... Arduino D11-D12
VCC (  ) ...... Arduino (+5V)
GND (  ) ...... Arduino (GND)
```

### Contenido del directorio
```
 arduino-listener                  => Carpeta del controlador de sonido en Arduino
  ├── arduino-listener.ino         => Fichero controlador del chip YM-2612
 ym2612_controller                 => Synth GUI realizado en Processing 3.x 
  ├── ym2612_controller.pde        => Fichero principal del GUI 
  ├── gui.pde                      => Funciones creadas automáticamente por GUI Builder
  ├── GUI_BUILDER_DATA             => Directorio creado por GUI Builder para guardar datos de la interfaz
 Readme.md                         => Este archivo
```
