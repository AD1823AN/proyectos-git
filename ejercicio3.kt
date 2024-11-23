// calcular el imc de una persona
fun main() {
    print("Ingrese su peso en kilogramos (kg): ")
    val peso = readLine()?.toDoubleOrNull()
    print("Ingrese su altura en metros (m): ")
    val altura = readLine()?.toDoubleOrNull()
    if (peso != null && peso > 0 && altura != null && altura > 0) {
        val imc = peso / (altura * altura)
        println("Su IMC es: %.2f".format(imc))
    } else {
        println("Por favor, ingrese valores válidos para el peso y la altura.")
    }
}


