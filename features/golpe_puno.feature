Feature: Golpe puno
	como jugador
	me gustaria tener opcion de golpear al oponente 
	para acabar con el.

Scenario: Inicial juego, J1 golpea jugador 2.
	Given I open punete
	When I press "Punete J1"
	Then I should see "100"
	And I should see "85"

Scenario: Inicial juego, J2 golpea jugador 1.
	Given I open punete
	When I press "Punete J2"
	Then I should see "85"
	And I should see "100"
