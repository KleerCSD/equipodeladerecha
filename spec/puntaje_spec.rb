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

end
