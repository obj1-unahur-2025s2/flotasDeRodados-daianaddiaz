class Corsa {
  const color
  
  method capacidad() = 4
  
  method velocidad() = 150
  
  method color() = color
  
  method peso() = 1300
}

class Kwid {
  const tieneTanqueAdicional
  
  method capacidad() {
    if (tieneTanqueAdicional) {
      return 3
    } else {
      return 4
    }
  }
  
  method velocidad() {
    if (tieneTanqueAdicional) {
      return 120
    } else {
      return 110
    }
  }
  
  method color() = azul
  
  method peso() = 1200 + if (tieneTanqueAdicional) 150 else 0
}

object azul {
  
}

object traffic {
  var interior = comodo
  var motor = popular
  
  method capacidad() = interior.capacidad()
  
  method peso() = (4000 + interior.peso()) + motor.peso()
  
  method asignarInterior(unInterior) {
    interior = unInterior
  }
  
  method asignarMotor(unMotor) {
    motor = unMotor
  }
  
  method velocidad() = motor.velocidad()
  
  method color() = blanco
}

object blanco {
  
}

object comodo {
  method peso() = 700
  
  method capacidad() = 5
}

object popular {
  method peso() = 1000
  
  method capacidad() = 12
}

object pulenta {
  method peso() = 800
  
  method velocidad() = 130
}

object bataton {
  method peso() = 500
  
  method velocidad() = 80
}

class Especial {
    const property capacidad
    const property velocidad
    const color
    const peso

    method peso() = peso // es equivalente a el property
    method color() = color // se sugiere usarlo cuando haya una logica para utilizar
}

object rojo {

}

object verde {
    
}