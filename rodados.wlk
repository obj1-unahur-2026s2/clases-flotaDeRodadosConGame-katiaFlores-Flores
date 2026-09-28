
class  ChevroletCorsa{
  const color



  method capacidad() = 4 //Por defecto
  method velocidad() = 150
  method color() =  new Corsa(color = color).color()
  method peso() = 1300

}

class Corsa{
  const color

  method color() = color 
}

class RenaultKwid {
  const tieneTanqueAdicional = false
  
  method capacidad() = if(tieneTanqueAdicional) 3 else 4
  method velocidad() = if(tieneTanqueAdicional) 120 else 110
  method color() = "azul"
  method peso() = if(tieneTanqueAdicional) 1200 + 150 else 1200




}

class Trafic{
  var interior = comodo
  var motor = pulenta

  method capacidad() = interior.capacidad()
  method velocidad() = motor.velocidad()
  method color() = "blanco"
  method peso() = (4000 + interior.peso() ) + motor.peso()
  
  method cambiarInterior(otro) {
      interior = otro
  }

  method cambiarMotor(otro) {
      motor = otro
  }


}

///Interiores

object comodo {

  method capacidad()= 5

  method peso() = 700
}

object popular {
 
  method capacidad()= 12

  method peso() = 1000 
}

//Motores

object pulenta {
  
  method peso() = 800
  method velocidad() = 130

}

object bataton {
  method peso() = 500
  method velocidad() = 80
}

//Otro Auto
class AutoEspecial {
  const capacidad
  const velocidad
  const color
  const peso

  method capacidad() = capacidad
  method velocidad() = velocidad
  method color() =  new Corsa(color = color).color()
  method peso() = peso 
}

