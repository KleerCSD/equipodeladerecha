class Puntaje
	attr_accessor :resultado1
	attr_accessor :resultado2
	attr_accessor :energia1
	attr_accessor :energia2

	def initialize
		@resultado1 = 100
		@resultado2 = 100
		@energia1 = 10
		@energia2 = 10
	end

	def quitarPuntaje jugador,valor
		
		if jugador.eql? "1" 
			@resultado1 = @resultado1 - valor
		else
			@resultado2 = @resultado2 - valor
		end

	end

	def mostrarVida
		"#{@resultado1}-#{@resultado2}" 
	end

	def mostrarEnergia
		"#{@energia1}-#{@energia2}" 
	end

end
