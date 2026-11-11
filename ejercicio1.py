# Ejercicio 1: ordenar una lista de diccionarios usando lambda

def ordenar_diccionarios(datos, clave):
    if not datos:
        return []
    if any(clave not in elemento for elemento in datos):
        raise ValueError("La clave indicada no existe en todos los diccionarios.")
    return sorted(datos, key=lambda elemento: elemento[clave])


if __name__ == "__main__":
    telefonos = [
        {"make": "Nokia", "model": 216, "color": "Black"},
        {"make": "Apple", "model": 2, "color": "Silver"},
        {"make": "Huawei", "model": 50, "color": "Gold"},
        {"make": "Samsung", "model": 7, "color": "Blue"}
    ]

    clave = input("Ingrese la clave para ordenar (make, model, color): ").strip()
    try:
        resultado = ordenar_diccionarios(telefonos, clave)
        print("\nLista ordenada:")
        for telefono in resultado:
            print(telefono)
    except (ValueError, TypeError) as error:
        print("Error:", error)
