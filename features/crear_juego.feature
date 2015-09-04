Feature: Crear Juego
	como administrador
	me gustaria tener la opcion de ingresar los nombres
	para personalizar el juego

Scenario: Ingresan nombres validos y dan crear.
	Given I open principal
	And I fill "nombre1" with "Claudia"
	And I fill "nombre2" with "Miguel"
	When I press "Crear"
	Then I should see "Juego Creado!!"
