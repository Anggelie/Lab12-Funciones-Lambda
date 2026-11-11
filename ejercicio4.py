# Ejercicio 4: eliminar elementos de una lista usando lambda

def eliminar_elementos(lista, elementos_a_borrar):
    return list(filter(lambda elemento: elemento not in elementos_a_borrar, lista))


if __name__ == "__main__":
    colores = ["rojo", "verde", "azul", "amarillo", "gris", "blanco", "negro"]
    borrar = ["amarillo", "café", "blanco"]

    print("Lista original:", colores)
    print("Elementos a borrar:", borrar)
    print("Lista resultante:", eliminar_elementos(colores, borrar))
