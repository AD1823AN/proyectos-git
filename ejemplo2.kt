/*La clase Dado define un método tirar que almacena en la propiedad
valor un número aleatorio comprendido entre 1 y 6.
Además llama al método imprimir para mostrarlo:*/
class Dado (var valor: Int){
    fun tirar() {
        valor = ((Math.random() * 6) + 1).toInt()
        imprimir()
    }
    fun imprimir() {
        println("Valor del dado: $valor")
    }
}
/*La clase JuegoDeDados define tres propiedades de la clase Dado:*/
class JuegoDeDados {
    val dado1 = Dado(1)
    val dado2 = Dado(1)
    val dado3 = Dado(1)
    /*En el método jugar de la clase JuegoDeDados procedemos a pedir a cada dado que se tire y verificamos si los tres valores
son iguales:*/
    fun jugar() {
        dado1.tirar()
        dado2.tirar()
        dado3.tirar()
        if (dado1.valor == dado2.valor && dado2.valor == dado3.valor)
            println("Ganó")
        else
            print("Perdió")
    }
}
/*En la función main de nuestro programa creamos un objeto de la clase JuegoDeDados:*/
fun main(parametro: Array<String>) {
    val juego1 = JuegoDeDados()
    juego1.jugar()
}