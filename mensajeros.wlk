object morfeo {
  var property pesoPropio = 90
  var property transporte = camion
  
  method peso() = transporte.peso() + pesoPropio
}

object trinity {
    var property pesoPropio = 900

    method peso() = pesoPropio
    
}

object neo {
    var property pesoPropio = 80
    
    method peso() = pesoPropio
  
}

object camion {
  var property acoplados = 1
  
  method peso() = acoplados * 500  //Acá tengo el peso total del camion, 500kg por cada acoplado
}

object monopatin {
  method peso() = 1
}

object puente {
  method dejarPasar(mensajero) = mensajero.peso() < 1000
}

object laMatrix {
  
}

object paquete {
  var property estado = false
  var property destino = puente
  
  method pago(_estado) {
    self.estado(_estado)
  }
  
  method estaPago() = estado
  
  method pagar() {
    self.pago(true)
  }

  method puedeSerEntregadoPor(mensajero) {
    return self.destino().dejarPasar(mensajero) && self.estaPago()
  }
}

object paquetito {
    method estaPago() = true

    method puedeSerEntregadoPor(mensajo) = true
}

object paqueton {
    var property destinos = []
    var property pagos = [] 
    const importe = 100

    method agregarDestino(destino) {
        self.destinos().add(destino)
    }

    method estaPago() {
       return self.pagos().sum({p => p}).equals(self.destinos().size() * importe)
    }

    method pagar() {
        self.pagos().add(importe)
    }
}