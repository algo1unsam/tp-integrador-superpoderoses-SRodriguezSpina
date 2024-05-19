class Heroe{
	var property agilidad=0
	var property fuerza=0
	var property habilidadEspecial=0
	var property espiritualidad=0
	var property estrategia=0 
	const poderes = []
	
	method agregarPoder(poder){
		poderes.add(poder)
	}
	method capacidadDeBatalla() {
		return poderes.sum()
	}
}

class Poder{
	var property agilidad
	var property fuerza
	var property habilidadEspecial
	method capacidadDeBatalla() = (self.agilidad() + self.fuerza()) * self.habilidadEspecial()
}

class Velocidad inherits Poder{
	var property rapidez= 0
	
	override method agilidad(heroe) = rapidez * heroe.estrategia()
	override method fuerza(heroe) = rapidez * heroe.espiritualidad()
	override method habilidadEspecial(heroe) = heroe.estrategia() + heroe.espiritualidad()
}

class Vuelo inherits Poder{
	var property alturaMaxima= 0
	var property energiaDespegue= 0
	
	override method agilidad(heroe)=(heroe.estrategia() * alturaMaxima) / energiaDespegue
	override method fuerza(heroe) = (heroe.espiritualidad() + alturaMaxima) - energiaDespegue
	override method habilidadEspecial(heroe) = heroe.estrategia() + heroe.espiritualidad()
}

class PoderAmplificador inherits Poder{
	var property amplificador= 0
	var property poderBase= 0
	
	override method agilidad(heroe) = poderBase
	override method fuerza(heroe) = poderBase
	override method habilidadEspecial(heroe) = poderBase * amplificador
}