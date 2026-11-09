# Ofrenda de Dia de Muertos - Laboratorio de Computacion Grafica

Proyecto final del Laboratorio de Computacion Grafica e Interaccion Humano-Computadora, semestre 2027-1, UNAM, Facultad de Ingenieria.

Recreacion en 3D de un panteon mexicano en la noche de Dia de Muertos, hecha en OpenGL 3.3 a partir del codigo base del laboratorio.

## Video

Video explicativo del proyecto: https://youtu.be/TYJ01hJs5oU

## Integrantes

| Nombre |
|---|
| Yasser Vladimir Cruz Miranda |
| Erick Isaac Echeverria Goicochea |

## Estructura del repositorio

```
ProyectoFinal.slnx / ProyectoFinal.vcxproj   Solucion de Visual Studio (Win32)
src/        main.cpp y animaciones
include/    Codigo base del laboratorio
shaders/    Shaders de iluminacion y skybox
assets/     Modelos, skybox y layout de la escena
external/   GLEW, GLFW, assimp, glm y SOIL2
docs/       Manual de usuario, manual tecnico y referencias
build/      Ejecutable para la entrega
```

## Como compilar

Abrir `ProyectoFinal.slnx` en Visual Studio, elegir Release | Win32 y compilar. En Release el ejecutable sale directo en `build/` junto con sus DLL.

## Como correr el ejecutable

Dar doble clic en `build/ProyectoFinal.exe`. No hace falta Visual Studio: junto al .exe estan `glew32.dll`, `assimp-vc140-mt.dll` (assimp 4.1.0 compilado en Release), `msvcp140.dll` y `vcruntime140.dll`. El programa busca `assets/` y `shaders/` junto al .exe o en la carpeta de arriba, por eso `build/` debe quedarse dentro del proyecto. Tarda unos 25 segundos en cargar los modelos.

## Controles

| Tecla | Accion |
|---|---|
| W A S D o flechas | Caminar |
| Raton | Mirar alrededor |
| F | Prender o apagar la linterna |
| V | Prender o apagar las velas |
| R | Prender o apagar el brillo de luna en los bordes (Fresnel) |
| N | Prender o apagar la niebla |
| + y - | Subir o bajar la luz de la luna |
| 1 | Viento en el papel picado (sencilla) |
| 2 | Banda tocando (sencilla) |
| 3 | Reja de la entrada que se abre y se cierra (sencilla) |
| 4 | Nino que saluda con maquina de estados (compleja) |
| 5 | Mariposas monarca volando alrededor de la ofrenda con keyframes (compleja) |
| Esc | Salir |

## Documentacion

- [Manual de usuario](docs/manual_usuario/manual_usuario.pdf)
- [Manual tecnico](docs/manual_tecnico/manual_tecnico.pdf)
- [Imagenes de referencia](docs/referencias/)
- [Video explicativo](https://youtu.be/TYJ01hJs5oU)

## Avance

| Parte | Estado |
|---|---|
| Estructura del proyecto y librerias | Listo |
| Codigo base, shaders y skybox | Listo |
| Modelos texturizados | Listo |
| Imagen de referencia | Listo |
| Escena del panteon | Listo |
| 5 animaciones por codigo | Listo |
| Ejecutable en build/ | Listo |
| Manual de usuario | Listo |
| Manual tecnico | Listo |
| Video explicativo | Listo |
