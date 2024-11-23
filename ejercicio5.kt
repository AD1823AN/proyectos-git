//calcular el sueldpo de 3 trabajadountitled1res solicitando los siguentes datos , dias trabajados ,pago por hofra extra
//validar que solo pueda trabajr 5 horas extra a la semana
fun main() {
    for (i in 1..3) {
        println("Trabajador $i")
        print("Ingrese la cantidad de días trabajados: ")
        val diasTrabajados = readLine()?.toIntOrNull()
        print("Ingrese el pago por hora extra: ")
        val pagoPorHoraExtra = readLine()?.toDoubleOrNull()
        print("Ingrese las horas extra trabajadas (máximo 5 por semana): ")
        val horasExtra = readLine()?.toIntOrNull()
        if (diasTrabajados != null && diasTrabajados > 0 &&
            pagoPorHoraExtra != null && pagoPorHoraExtra > 0 &&
            horasExtra != null && horasExtra in 0..5) {
            val sueldoBase = diasTrabajados * 8 * 15
            val pagoExtra = horasExtra * pagoPorHoraExtra
            val sueldoTotal = sueldoBase + pagoExtra
            println("El sueldo total del trabajador $i es: $$sueldoTotal\n")
        } else {
            println("Datos inválidos. Asegúrese de ingresar valores correctos.\n")
        }
    }
}
