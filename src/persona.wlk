import habitacion.*


class Persona {
	var property edad
	var duenio = false
	var habilidadCocina = false
	
	method esDuenio() {
		duenio = true
	}
	method noEsDuenio() {
		duenio = false
	}
	method duenio(){
		return duenio	
	}
	
	method tieneHabilidad() {
		habilidadCocina = true
	}
	
	method habilidad() {
		return habilidadCocina
	}
}
