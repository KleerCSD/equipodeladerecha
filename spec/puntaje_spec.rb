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
		resultado.should == "10-10"

	end

	it "subir energia" do

		puntaje = Puntaje.new

		puntaje.subirEnergia("1", 10)
		resultado = puntaje.mostrarEnergia
		resultado.should == "20-10"

	end

	it "Recargar Vida" do

		puntaje = Puntaje.new

		puntaje.subirVida("1")
		resultado = puntaje.mostrarVida
		resultado.should == "110-100"

	end
end
