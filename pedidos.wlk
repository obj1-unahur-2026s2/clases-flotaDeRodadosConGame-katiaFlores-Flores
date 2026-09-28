class Pedido{
    const distancia
    var tiempoMaximo
    const pasajeros
    const coloresIncompatibles = #{}


    method velocidad() = distancia / tiempoMaximo
    method pasajeros() = pasajeros
    method puedeSastifacerPedido(auto) = auto.capacidad() >= pasajeros and auto.velocidad() >= self.velocidad()
    method esAutoCompatible(auto) = coloresIncompatibles.all({ c => c != auto.color()})

    method agregarColorIncompatible(color) {
      coloresIncompatibles.add(color)
    }
    
    method acelerar() {
      tiempoMaximo -= 1
    }
    
    method relajar() {
      tiempoMaximo += 1
    }

}