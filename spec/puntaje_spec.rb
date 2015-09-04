require './lib/puntaje'

describe Puntaje do

	it "Muestra Vida" do
	#Arrange
		puntaje = Puntaje.new
	#Act
		resultado = puntaje.mostrarVida
	#Assert
		resultado.should == "100-100"
	end

	it "Bajar Vida" do
	#Arrange
		puntaje = Puntaje.new
	#Act
		puntaje.quitarPuntaje("1", 15)
		resultado = puntaje.mostrarVida
	#Assert
		resultado.should == "85-100"
	end

	it "Muestra Energia" do
	#Arrange
		puntaje = Puntaje.new
	#Act
		resultado = puntaje.mostrarEnergia
	#Assert
		resultado.should == "10-10"
	end

	it "Subir energia" do
	#Arrange
		puntaje = Puntaje.new
	#Act
		puntaje.subirEnergia("1")
		resultado = puntaje.mostrarEnergia
	#Assert
		resultado.should == "20-10"
	end

	it "Recargar Vida" do
	#Arrange
		puntaje = Puntaje.new
	#Act
		puntaje.subirVida("1")
		resultado = puntaje.mostrarVida
	#Assert
		resultado.should == "110-100"
	end
	
	it "Ver Resultado Final" do
	#Arrange
		puntaje = Puntaje.new
	#Act
		puntaje.quitarPuntaje("2", 15)
		puntaje.quitarPuntaje("2", 15)
		puntaje.quitarPuntaje("2", 15)
		puntaje.quitarPuntaje("2", 15)
		puntaje.quitarPuntaje("2", 15)
		puntaje.quitarPuntaje("2", 15)
		puntaje.quitarPuntaje("2", 15)
		resultado = puntaje.verResultadoFinal
		
	#Assert
		resultado.should == "Gano Jugador 1"
	end

	it "obtener vida de jugador 1" do

		puntaje = Puntaje.new
		resultado = puntaje.getJugadorVida("1")
		resultado.should == 100

	end

	it "obtener vida de jugador 2" do

		puntaje = Puntaje.new
		resultado = puntaje.getJugadorVida("2")
		resultado.should == 100

	end

end
