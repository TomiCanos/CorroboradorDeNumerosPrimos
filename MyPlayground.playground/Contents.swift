import UIKit

//Escriba un algoritmo que dado un numero natural detecte si es primo o no. Nota: Un número primo es un entero mayor que 1 que tiene únicamente dos divisores distintos: él mismo y el 1.
func verificadorDeNumerosPrimos (numeroACorroborar: Int!) -> Bool {
    var resultado = true
    var cantidadDeDivisionesExactas = 0
    
    if numeroACorroborar == 1 || numeroACorroborar == nil{
        resultado = false
    } else {
        for n in 1...numeroACorroborar {
            if numeroACorroborar % n == 0{
                cantidadDeDivisionesExactas += 1
            }
            if cantidadDeDivisionesExactas == 3 {
                resultado = false
                break
            }
        }
    }
    
    return resultado
}

verificadorDeNumerosPrimos(numeroACorroborar: 4)
