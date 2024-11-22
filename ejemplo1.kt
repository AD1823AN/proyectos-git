/*hacemos la declaración de la clase Cliente*/
class Cliente(var nombre: String, var monto: Float) {
    /*El método depositar  aumenta la propiedad monto*/
    fun depositar(monto: Float) {
        this.monto += monto
    }
    /*El método extraer  reduce la propiedad monto del cliente*/
    fun extraer(monto: Float) {
        this.monto -= monto
    }
    /*metodo que muestra los datos del cliente */
    fun imprimir() {
        println("$nombre tiene depositado la suma de $monto")
    }
}
/*La segunda es Banco. Esta clase define tres propiedades de la clase Cliente (la clase Cliente
colabora con la clase Banco):*/
class Banco {
    val cliente1: Cliente = Cliente("Juan", 0f)
    var cliente2: Cliente = Cliente("Ana", 0f)
    var cliente3: Cliente = Cliente("Luis", 0f)
    /*El método operar realiza una serie de depósitos y extracciones de los clientes*/
    fun operar() {
        cliente1.depositar(100f)
        cliente2.depositar(150f)
        cliente3.depositar(200f)
        cliente3.extraer(150f)
    }
    /*El método  depositoTotales  muestra cuanto dinero tiene
  depositado el banco se resuelve accediendo a la propiedad monto de cada
cliente:*/
    fun depositosTotales() {
        val total = cliente1.monto + cliente2.monto + cliente3.monto
        println("El total de dinero del banco es: $total")
        cliente1.imprimir()
        cliente2.imprimir()
        cliente3.imprimir()
    }
}
/*función main  crea un objeto de la clase Banco y llamar a los dos métodos*/
fun main(parametro: Array<String>) {
    val banco1 = Banco()
    banco1.operar()
    banco1.depositosTotales()
}