//validar la entrada a una aplicacion mediante una clave:tesji123
fun main() {
    val claveCorrecta = "tesji123"
    var claveIngresada: String? = null

    do {
        print("Ingrese la clave para acceder: ")
        claveIngresada = readLine()

        if (claveIngresada == claveCorrecta) {
            println("Acceso concedido. ¡Bienvenido!")
        } else {
            println("Acceso denegado. Clave incorrecta. Inténtelo de nuevo.")
        }
    } while (claveIngresada != claveCorrecta)
}

