import mensajeros.*
object mensajeria {
    var property contratados = [] //Creo una list con los mensajeros contratados

    method contratar(mensajero) {
        self.contratados().add(mensajero)   //Agrego un mensajero a la coleccion cada vez que se contrata
    }

    method estaContratado(mensajero) = self.contratados().contains(mensajero) 
    //Pregunto si el mensajero está contratado. Contains devuelve boolean, busca si el mesanjero está en la coleccion
    method despedir(mensajero) {
      self.contratados().remove(mensajero)  //Saco al mensajero despedido de la coleccion
    }


    method despedirATodos() {
      self.contratados().clear()   //Limpio la coleccion de mensajeros contratados
    }

    method esGrande(mensajeros) = mensajeros.size() > 2  //Pregunto si la coleccion tiene más de 2 mensajeros

    method puedeEntregarPaquete(mensajero, paquete) = paquete.puedeSerEntregadoPor(mensajero)
    //Pregunto si el mensajero puede entregar el paquete

    method pesoMensajero(mensajero) = mensajero.peso()
    //Devuelvo el peso del mensajero

}