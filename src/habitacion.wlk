class Habitante {
	var property edad = 0
	var property habCocina = false
 
 	method edadHabitante() { return edad }
 	method aprendioCocinar() { habCocina = true}
 	method tienehabilidadesCocina() { return habCocina }
	//method confor(persona) { return 14}
}

class Habitacion inherits Habitante{
	var property unidadesDeConfort = 10
	
	
}

class UsoGeneral inherits Habitacion{
	
	}
	
class Banio inherits Habitacion {
	
	method unidadesDeConfort(habit) {
		
		if (habit.edadHabitante() <= 4) {return unidadesDeConfort + 2} 
		else {return unidadesDeConfort + 4}
	}
}

class Dormitorio inherits Habitacion {
	const duenios = #{}
	
	// method agregarDuenio(pers) { duenios.add(pers)}
	//override method confort(persona) {
	//	if (self.esDuenio(persona)) {
	//	return super(persona) + (10 / duenios.size())	//}
	// 	else {return super(persona)}
	//}
	//} ver para modificar Banio

	
	//method esDuenio(persona) {
	// return duenios.contains(persona)}
}

class Cocina inherits Habitacion {
	
	method habilidadesCocina(habit) {
		if habit.tieneHabilidadesCocina() { return unidadesDeConfort + xx//calcula como un porcentaje de la cantidad de metros cuadrados de esa cocina
		}
	}
	
}
}

