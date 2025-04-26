object alambiqueVeloz {
  method getVelocidadMaxima() = 10
  
  method getCantidadDeCombustible() = 180
}

object superChatarraEspacial {
  method getVelocidadMaxima() = 200
  
  method getCantidadDeCombustible() = 10
}

object antiguaBlindada {
  const cantidadDeGangsters = 10
  
  method getVelocidadMaxima() = 100 + (cantidadDeGangsters * 10)
  
  method getCantidadDeCombustible() = 100
}

object superConvertible {
  var vehiculoActual = alambiqueVeloz
  
  method getVelocidadMaxima() = vehiculoActual.getVelocidadMaxima()
  
  method getCantidadDeCombustible() = vehiculoActual.getCantidadDeCombustible()
  
  method cambiarVehiculo(vehiculo) {
    vehiculoActual = vehiculo
  }
}