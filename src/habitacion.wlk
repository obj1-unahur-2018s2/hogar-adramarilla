import persona.*

class Habitacion {
	var confort = 10
	var adentroHabitacion = #{}
	
	method entrarHabitacion(persona){
		if (adentroHabitacion.size() == 0) {
			adentroHabitacion.add(persona)}
	}

	method salirHabitacion(persona) {
		adentroHabitacion.remove(persona)
	}
	
	method estaEnHabitacion(persona){
		return adentroHabitacion.contains(persona)
	}
	
	method unidadesDeConfort(persona) {
		return confort
	}
}

class UsoGeneral inherits Habitacion {
	
}

class Banio inherits Habitacion {

	override method unidadesDeConfort(persona) {
		if (persona.edad() <= 4) {return confort + 2} 
		else {return confort + 4}
		}
		
	override method entrarHabitacion(persona) {
		super(persona)	
		if (adentroHabitacion.any({j =>j.edad() <= 4})) {
			adentroHabitacion.add(persona)}
		else if (persona.edad() <= 4) {
			adentroHabitacion.add(persona)}
		else {self.error(" No puede ingresar ")}
		}
}

class Dormitorio inherits Habitacion{
	 var duenios =#{}
	 
	 method agregarDuenio(persona){
	 	duenios.add(persona) }
	 
	 override method unidadesDeConfort(persona){
	 return super(persona) + (if (persona.duenio()) {10 / duenios.size()}
	 else {0})
	 }
	 
 	override method entrarHabitacion(persona) { 
		super(persona)
		if(persona.duenio()) {adentroHabitacion.add(persona)}
			else if (adentroHabitacion == duenios) {adentroHabitacion.add(persona)}
						else {self.error(" No puede ingresar")}
	}
}

class Cocina inherits Habitacion {

	var property metrosCocina
	var porcentaje = 10
	
	method unidadExtraCocina() {
		return (porcentaje*metrosCocina)/100}
	
	override method unidadesDeConfort(persona){
		if (persona.habilidad()) {return super(persona) + self.unidadExtraCocina()}
		else {return super(persona)} 
	}
	
	override method entrarHabitacion(persona) { 
		super(persona)
		if (not persona.habilidadCocina()) {adentroHabitacion.add(persona)}
			else {
				if(adentroHabitacion.any({h => h.habilidadCocina()})){
					self.error("No puede ingresar")
				}
					else {adentroHabitacion.add(persona)}
			}
	}
}
