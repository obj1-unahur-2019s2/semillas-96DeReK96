import semillas.*
class Parcela {
	var property ancho 
	var property largo 
	var property horasDeSolPorDia
	var property plantas = []
	method superficie() {
		return ancho * largo
	}
	method cantidadMaxDePlantasQueTolera() {
		return if (ancho > largo) {
			self.superficie() / 5
		} else {
			self.superficie() / 3 + largo
		}
	}

	
	
	
	method tieneComplicaciones() {
		return plantas.any({planta => planta.horasDeSolTolera() < horasDeSolPorDia})
	}
	method plantarUnaPlanta(planta) {
		if (not(self.cantidadMaxDePlantasQueTolera() < plantas.size())) {
			plantas.add(planta)
		} else {
			self.error("se alcanzo el limite de plantar")
		}
	}
}
