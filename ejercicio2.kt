// desarrollar un programa que pida el precio de un articulo ,
// cantidad de articulos y mostrar el total de la compra
fun main() {
    print("Ingrese el precio del artículo: ")
    val precio = readLine()?.toDoubleOrNull()
    print("Ingrese la cantidad de artículos: ")
    val cantidad = readLine()?.toIntOrNull()
    if (precio != null && precio > 0 && cantidad != null && cantidad > 0) {
        val total = precio * cantidad
        println("El total de la compra es: $total")
    } else {
        println("Por favor, ingrese valores válidos para el precio y la cantidad.")
    }
}
