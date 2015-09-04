require './lib/puntaje'

describe Puntaje do

	it "Muestra puntaje" do
	#Arrange
		puntaje = Puntaje.new

	#Act
		resultado = puntaje.mostrar

	#Assert
		resultado.should == "100-100"

	end

	it "quitar puntaje" do

		puntaje = Puntaje.new

		puntaje.quitarPuntaje("1", 15)
		resultado = puntaje.mostrar
		resultado.should == "85-100"

	end

end
