// hayar la superficie de un cuadrado solicitando el valor de un lado del mismo
fun main() {
    print("Ingrese el valor del lado del cuadrado: ")
    val lado = readLine()?.toDoubleOrNull()
    if (lado != null && lado > 0) {
        val superficie = lado * lado
        println("La superficie del cuadrado es: $superficie")
    } else {
        println("Por favor, ingrese un número válido y positivo.")
    }
}
