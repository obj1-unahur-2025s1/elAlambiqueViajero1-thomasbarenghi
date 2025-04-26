object restriccionVelocidad {
  const velocidadMinima = 150
  
  method getVelocidadMinima() = velocidadMinima
  
  method pasaLaRestriccion(
    vehiculo
  ) = vehiculo.getVelocidadMaxima() >= velocidadMinima
}

object restriccionCombustible {
  const cantidadMinima = 90
  
  method getCantidadMinima() = cantidadMinima
  
  method pasaLaRestriccion(
    vehiculo
  ) = vehiculo.getCantidadDeCombustible() >= cantidadMinima
}

object sinRestricciones {
  method pasaLaRestriccion(vehiculo) = true
}