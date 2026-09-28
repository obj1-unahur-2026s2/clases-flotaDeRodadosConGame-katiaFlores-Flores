import rodados.*

class Dependencia{

    const flota = []
    const empleados 

    method agregarAFlota(rodado) {
      flota.addAll(rodado)
    }

    method quitarFlota(rodado) {
      flota.remove(rodado)
    }

    method pesoTotal() = flota.sum({f => f.peso()})
  

    method estaBienEquipada() = flota.size() >= 3 and flota.all({f => f.velocidad() >= 100})

    method capacidadTotalEnColor(color) = flota.filter({f => f.color() == color}).sum({f => f.capacidad()})

    method colorDelRodadoMasRapido() = flota.max({f => f.velocidad()}).color()

    method capacidadFaltante() = empleados - flota.sum({f => f.capacidad()})


    method esGrande() = empleados >= 40 and flota.size() == 5


}   