# Practica_4_Creando-Interfaces-de-Usuario
## Sistema planetario 3D - Ismael Aarab Umpiérrez

### Introducción
- La práctica anterior aborda los elementos necesarios para aplicar transformaciones 2D y 3D a objetos, texto e imágenes. El primer paso en la representación gráfica de una escena es justamente la aplicación de transformaciones a los modelos de los objetos presentes en dicha escena. Una vez que los modelos han sido posicionados en el espacio tridimensional, procede localizar la o las cámaras, para finalmente proyectar los puntos al plano de proyección en dos dimensiones.


![](sistemaconnave.gif)

### Desarrollo
- Para esta práctica, se parte de la anterior, tener un sistema planetario creado con sus planetas y lunas, pero esta vez, añadiendo una nave espacial en el cual se mueve a través del espacio. 
- Para la observación del planeta, se ha creado 2 tipos de cámaras:
  - Cámara fija: Desde una perspectiva se aprecia el movimiento de los planetas alrededor de la estrella. Se puede cambiar de modo pulsando la tecla **K**.
  - Cámara libre: El usuario es libre de moverse y tiene la perspectiva de la nave donde se está moviendo por el espacio.
- Para la creación de la nave, se ha descargado un modelo de internet de **Super Mario** , haciendo que este actúe como la nave que se mueve y se ha implementado en el código con una textura un poco curiosa.

### Instrucciones
- Modo Fijo:
  - **K** - Cambia la cámara a modo libre desde el punto de vista de la nave.
- Modo Libre:
  - **T** - Mueve la cámara hacia arriba.
  - **G** - Mueve la cámara hacia abajo.
  - **A** - Mueve la cámara hacia la izquierda.
  - **D** - Mueve la cámara hacia la derecha.
  - **W** - Acerca la cámara.
  - **S** - Aleja la cámara.
  - **Barra espaciadora** - Resetea las coordenadas y la nave por defecto.
  - **O** - Cambia la cámara a modo fijo, pero la posición de la nave se queda en donde se encuentra actualmente.
  - **4** - Rota la nave hacia la izquierda.
  - **6** - Rota la nave hacia la derecha.
  - **→** - Rota la camara hacia la derecha.
  - **←** - Rota la camara hacia la izquierda.
  - **↑** - Rota la camara hacia arriba.
  - **↓** - Rota la camara hacia la abajo.
  
  
### Herramientas y Referencias
  
  - [Conversión video a GIF](https://ezgif.com/video-to-gif)
  
  - [Texturas](http://planetpixelemporium.com/)
  
  - [Modelo de Mario como nave](https://www.models-resource.com/wii/supermariogalaxy/model/863/)
  
  - [Referencia para el sistema planetario](https://www.youtube.com/watch?v=l8SiJ-RmeHU)
  
  - [Textura de Mario](https://www.textures-resource.com/nintendo_64/supersmashbros/texture/1820/)
