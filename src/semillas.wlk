class Planta {
	var property anioDeObtencion
	var property altura
	method horasDeSolTolera() 
	method esFuerte() {
		return self.horasDeSolTolera() > 10
	}
	method daNuevasSemillas() {
		return self.esFuerte()
	}
	
	method espacioQueOcupa() 
}

class Menta inherits Planta {
	override method horasDeSolTolera() {
		return 6
	}
	override method daNuevasSemillas() {
		var superaElLimiteDeAltura = altura > 0.4
		return super() or superaElLimiteDeAltura
	}
	override method espacioQueOcupa() {
		return (altura * 3)
	}
}

class Soja inherits Planta {
	override method horasDeSolTolera() {
		var menor = altura < 0.5
		var entre = altura.between(0.5, 1)
		return if (menor) {
			6
		} else if (entre) {
			7
//    	MAS	
		} else {
			9
		}
	}	
	override method daNuevasSemillas() {
		var superaAnioDeObtencion = anioDeObtencion > 2007
		var superaAltura = altura > 1
		return super() or (superaAnioDeObtencion and superaAltura)	}
	override method espacioQueOcupa() {
		return altura / 2
	}
}

class Quinua inherits Planta {
	var property horasDeSolTolera
	override method daNuevasSemillas() {
		var esAnioMenor = anioDeObtencion < 2005  
		return super() or esAnioMenor 
	}
	override method espacioQueOcupa() {
		return 0.5
	}
}

class SojaTransgenica inherits Soja {
	override method daNuevasSemillas() {
		return false
	} 
}

class HierbaBuena inherits Menta {
	override method espacioQueOcupa() {
		return super() * 2
	}
}
