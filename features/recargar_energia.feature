Feature: Recargar Energia
	como Juan
	me gustaria tener opcion de recargar energia
	para después poder cambiarla por vida

Scenario: El juego comienza, y el jugador 1 recarga energia
	Given I open punete
	When I press "recargar energia"
	Then I should see "10-0"
