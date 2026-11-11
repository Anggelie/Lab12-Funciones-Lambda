# Laboratorio No. 12 - Funciones lambda en Haskell

Universidad del Valle de Guatemala  
Ingeniería en Ciencia de la Computación y Tecnologías de la Información

## Descripción

Resolución de los cuatro ejercicios del laboratorio utilizando Haskell y expresiones lambda.

## Ejercicios

1. **Ordenar diccionarios por una clave:** se representa cada registro con un tipo `Telefono` y se ordena por `make`, `model` o `color`. Archivo: `Ejercicio1.hs`.
2. **Potencias de una lista:** se eleva cada entero a la potencia positiva indicada. Archivo: `Ejercicio2.hs`.
3. **Transpuesta de una matriz:** se intercambian las filas y columnas mediante expresiones lambda. Archivo: `Ejercicio3.hs`.
4. **Eliminar elementos:** se filtran los elementos de una lista que aparecen en otra. Archivo: `Ejercicio4.hs`.

## Ejecución

Se requiere GHC o GHCi (Haskell). Cada ejercicio es independiente y contiene su propia función `main`.

Desde la carpeta del repositorio:

```bash
runghc Ejercicio1.hs
runghc Ejercicio2.hs
runghc Ejercicio3.hs
runghc Ejercicio4.hs
```

También se pueden ejecutar en GHCi, uno a la vez:

```bash
ghci Ejercicio1.hs
```

Y luego escribir `main`.

## Ejemplos de resultados

- **Ejercicio 1:** con la clave `model`, los modelos aparecen en orden `2, 7, 50, 216`.
- **Ejercicio 2:** con potencia `3`, se obtiene `[1,8,27,64,125,216,343,512,729,1000]`.
- **Ejercicio 3:** `[[1,2,3],[4,5,6]]` se transforma en `[[1,4],[2,5],[3,6]]`.
- **Ejercicio 4:** quedan `["rojo","verde","azul","gris","negro"]`.
