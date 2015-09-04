Feature: Recargar Energia
	como Juan
	me gustaria tener opcion de recargar energia
	para después poder cambiarla por vida

Scenario: El juego comienza, y el jugador 1 recarga energia
	Given I open punete
	When I press "Recarga Energia J1"
	Then I should see "20"
	And I should see "10"


Scenario: El juego comienza, y el jugador 2 recarga energia
	Given I open punete
	When I press "Recarga Energia J2"
	Then I should see "10"
	And I should see "20"

