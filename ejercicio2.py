# Ejercicio 2: calcular potencias con lambda

def calcular_potencias(numeros, potencia):
    if potencia <= 0:
        raise ValueError("La potencia debe ser un entero positivo.")
    return list(map(lambda numero: numero ** potencia, numeros))


if __name__ == "__main__":
    numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

    try:
        n = int(input("Ingrese la potencia (entero positivo): "))
        print("Lista original:", numeros)
        print("Resultado:", calcular_potencias(numeros, n))
    except ValueError as error:
        print("Error: ingrese un entero positivo.", error)
