//: Playground - noun: a place where people can play

import UIKit

//enumeracmos velocidades y establecemos los 4 casos
enum Velocidades : Int {
    case apagado = 0
    case velocidadBaja = 20
    case velocidadMedia = 50
    case velocidadAlta = 120

    // inicializar el valor inicial al enum
    init(velocidadInicial: Velocidades){
        self = velocidadInicial
    }
    
    // se regresa el valor impreso
    var descripcion : String {
        switch self {
        case .apagado: return "Apagado";
        case .velocidadBaja: return "Velocidad baja"
        case .velocidadMedia: return "Velocidad media"
        case .velocidadAlta: return "Velocidad Alta"
        }
    }
}

//clase Auto
class Auto {
    var velocidad: Velocidades
    var sube = true
    
    //inicializamos el valor inicial con 0
    init (){
        self.velocidad = .apagado
    }
    
    
    // funcion que permite variar la velocidad y devuelve el valor
    func cambioDeVelocidad( ) -> (actual : Int, velocidadEnCadena: String){
        
        let velocidadActual = self.velocidad
        
        // cambio de velocidad con switch
        switch (self.velocidad) {
        case .apagado:
            self.velocidad = .velocidadBaja
        case .velocidadBaja:
            self.velocidad = .velocidadMedia
        case .velocidadMedia:
            self.velocidad = .velocidadAlta
        case .velocidadAlta:
            self.velocidad = .velocidadMedia
        }
        
        //devuelve el valor de la velocidad actual
        return (velocidadActual.rawValue, velocidadActual.descripcion)
    }
    
}

// una variable auto para el velocimetro
var auto: Auto = Auto()
auto.velocidad
for i in 1...20 {
    let result = auto.cambioDeVelocidad()
    print ("Velocidad:", result.actual, "\t", result.velocidadEnCadena)
}

