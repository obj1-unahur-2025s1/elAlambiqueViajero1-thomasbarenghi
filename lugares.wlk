import restricciones.*

object paris {
  const recuerdoTipico = "Llavero de la Torre Eiffel"
  const restriccion = restriccionCombustible
  
  // Getters
  method getRecuerdoTipico() = recuerdoTipico
  
  method getRestriccion() = restriccion
}

object buenosAires {
  var presidente = self.presidenteMilei()
  var recuerdoTipico = "Mate con yerba"
  const restriccion = restriccionVelocidad
  
  // Getters
  method getRecuerdoTipico() = recuerdoTipico
  
  method getPresidente() = presidente
  
  method getRestriccion() = restriccion
  
  // Logica
  method cambiarPresidente(nuevoPresidente) {
    if ((nuevoPresidente == self.presidenteMilei()) || (nuevoPresidente == self.presidenteFernandez())) {
      presidente = nuevoPresidente
      self.actualizarRecuerdo()
    }
  }
  
  method actualizarRecuerdo() {
    if (self.esGobiernoDeMilei()) {
      recuerdoTipico = "Mate con yerba"
    } else {
      recuerdoTipico = "Mate sin yerba"
    }
  }
  
  // Representacion
  method esGobiernoDeMilei() = presidente == self.presidenteMilei()
  
  method esGobiernoDeFernandez() = presidente == self.presidenteFernandez()
  
  method presidenteMilei() = "Javier Milei"
  
  method presidenteFernandez() = "Alberto Fernandez"
}

object bagdad {
  var recuerdoTipico = "Bidón con petróleo crudo"
  var año = 2023
  const restriccion = sinRestricciones
  
  // Getters
  method getRecuerdoTipico() = recuerdoTipico
  
  method getAño() = año
  
  method getRestriccion() = restriccion
  
  // Logica
  method cambiarRecuerdo(nuevoRecuerdo) {
    recuerdoTipico = nuevoRecuerdo
  }
  
  method cambiarAño(nuevoAño) {
    año = nuevoAño
    self.actualizarRecuerdo()
  }
  
  method actualizarRecuerdo() {
    if (self.esEpocaDePetroleo()) {
      recuerdoTipico = "Bidón con petróleo crudo"
    }
    
    if (self.esEpocaDeGuerra()) {
      recuerdoTipico = "Armas de destrucción masiva"
    }
    
    if (self.esEpocaDePaz()) {
      recuerdoTipico = "Jardines colgantes de Babilonia"
    }
  }
  
  // Representacion
  method esEpocaDePetroleo() = (año >= 2023) && (año < 2024)
  
  method esEpocaDeGuerra() = (año >= 2003) && (año < 2023)
  
  method esEpocaDePaz() = año < 2003
}

object lasVegas {
  var recuerdoTipico = "Llavero de la Torre Eiffel"
  var año = 2023
  var restriccion = restriccionCombustible
  
  // Getters
  method getRecuerdoTipico() = recuerdoTipico
  
  method getAño() = año
  
  method cambiarRecuerdo(nuevoRecuerdo) {
    recuerdoTipico = nuevoRecuerdo
  }
  
  method cambiarAño(nuevoAño) {
    año = nuevoAño
    self.actualizarConmemoracion()
  }
  
  // Logica
  method actualizarConmemoracion() {
    if (self.seConmemoraAParis()) {
      recuerdoTipico = paris.getRecuerdoTipico()
      restriccion = paris.getRestriccion()
    }
    
    if (self.seConmemoraABuenosAires()) {
      recuerdoTipico = buenosAires.getRecuerdoTipico()
      restriccion = buenosAires.getRestriccion()
    }
    
    if (self.seConmemoraABagdad()) {
      recuerdoTipico = bagdad.getRecuerdoTipico()
      restriccion = bagdad.getRestriccion()
    }
  }
  
  // Representacion
  method seConmemoraAParis() = año == 2023
  
  method seConmemoraABuenosAires() = año == 2024
  
  method seConmemoraABagdad() = año == 2025
}