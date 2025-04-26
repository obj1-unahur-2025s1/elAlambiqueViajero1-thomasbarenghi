import lugares.*
import vehiculos.*

object luke {
  var ultimoLugarVisitado = bagdad
  var cantidadDeViajes = 1
  var vehiculoActual = alambiqueVeloz
  
  // Getters
  method getUltimoLugarVisitado() = ultimoLugarVisitado
  
  method getUltimoRecuerdo() = ultimoLugarVisitado.getRecuerdoTipico()
  
  method getCantidadDeViajes() = cantidadDeViajes
  
  method getVehiculoActual() = vehiculoActual
  
  // Logica
  method viajarA(lugar) {
    if (lugar.getRestriccion().pasaLaRestriccion(vehiculoActual)) {
      ultimoLugarVisitado = lugar
      cantidadDeViajes += 1
    }
  }
  
  method cambiarVehiculo(vehiculo) {
    vehiculoActual = vehiculo
  }
}