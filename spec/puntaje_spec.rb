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

	it "quitar puntaje" do

		puntaje = Puntaje.new

		puntaje.quitarPuntaje("1", 15)
		resultado = puntaje.mostrarVida
		resultado.should == "85-100"

	end

	it "Muestra Energia" do
	#Arrange
		puntaje = Puntaje.new

	#Act
		resultado = puntaje.mostrarEnergia

	#Assert
		resultado.should == "100-100"

	end


end
