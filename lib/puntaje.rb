class Puntaje
	attr_accessor :resultado1
	attr_accessor :resultado2

	def initialize
		@resultado1 = 100
		@resultado2 = 100
	end

	def quitarPuntaje jugador,valor
		
		if jugador.eql? "1" 
			@resultado1 = @resultado1 - valor
		else
			@resultado2 = @resultado2 - valor
		end

	end

	def mostrar
		"#{@resultado1}-#{@resultado2}" 
	end

end
