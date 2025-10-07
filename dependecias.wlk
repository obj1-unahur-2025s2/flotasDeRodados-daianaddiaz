import rodados.*

class Dependencia {
    const cantidadEmpleados

    const rodados = []
    

    method agregarAFlota(rodado) {
        rodados.add(rodado)
    }

    method quitarDeFlorta(rodado){
        rodados.remove(rodado)
    }

    method pesoTotalFlota(){
       return rodados.sum({f => f.peso()})
    }

    method estaBienEquipada(){
      return rodados.size() >= 3 and rodados.all({r=> r.velocidad() >= 100})
    }

    method capacidadTotalEnColor(color){
       return  rodados.filter({f=> f.color() == color}).sum({f => f.capacidad()})
    }

    method colorDelRodadoMasRapido(){
       return rodados.max({f=>f.velocidad()}).color()
    }

    method capacidadTotalDeRodados() {
      return rodados.sum({r=>r.capacidad()})
    }
    method capacidadFaltante(){
       return cantidadEmpleados - self.capacidadTotalDeRodados()
    }

    method esGrande() {
        cantidadEmpleados > 40 and rodados.size() == 5
    }
}