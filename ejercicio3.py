# Ejercicio 3: transpuesta de una matriz usando lambda

def transponer_matriz(matriz):
    if not matriz:
        return []
    columnas = len(matriz[0])
    if any(len(fila) != columnas for fila in matriz):
        raise ValueError("Todas las filas deben tener la misma cantidad de columnas.")
    return list(map(lambda columna: list(columna), zip(*matriz)))


if __name__ == "__main__":
    matriz = [
        [1, 2, 3],
        [4, 5, 6]
    ]

    print("Matriz original:")
    for fila in matriz:
        print(fila)

    print("\nMatriz transpuesta:")
    for fila in transponer_matriz(matriz):
        print(fila)
