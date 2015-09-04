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

	#Vida

	def mostrarVida
		"#{@resultado1}-#{@resultado2}" 
	end

	def quitarPuntaje jugador,valor
		if jugador.eql? "1" 
			@resultado1 = @resultado1 - valor
		else
			@resultado2 = @resultado2 - valor
		end
	end

	def subirVida jugador
		if jugador.eql? "1" 
			@resultado1 = @resultado1 + @energia1
			@energia1 = 0
		else
			@resultado2 = @resultado2 + @energia2
			@energia2 = 0
		end
	end

	#Energia

	def mostrarEnergia
		"#{@energia1}-#{@energia2}" 
	end


	def subirEnergia jugador
		if jugador.eql? "1" 
			if @energia1 == 100
			
				@energia1 = 100	
			
			else

				@energia1 = @energia1 + 10

			end
		else
			if @energia2 == 100
			
				@energia2 = 100	
			
			else

				@energia2 = @energia2 + 10

			end
		end
	end

	def verResultadoFinal

		if @resultado1 <= 0
			"Gano Jugador 2"
		elsif @resultado2 <= 0
			"Gano Jugador 1"
		else
			"Peleando"
		end
	end
end
