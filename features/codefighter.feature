Feature: Ejecutar Patada
		como Juan 
		me gustaria tener la opcion de patada
		para patear y sacarle la michi a alguien

Scenario: Inicio de Juego, jugador1 da una patada y la vida del jugador2 disminuye en 17 de vida
	Given I open the web juego
	When I press "Patada Jugador 1" 
	Then I should see "100"
	And I should see "83"

Scenario: Inicio de Juego, jugador2 da una patada y la vida del jugador1 disminuye en 17 de vida
	Given I open the web juego
	When I press "Patada Jugador 2" 
	Then I should see "83"
	And I should see "100"

Scenario: Inicio de Juego, jugador1 da una patada y el jugador2 da una patada entonces disminuye en 17 de vida de ambos
	Given I open the web juego
	When I press "Patada Jugador 1" 
	And I press "Patada Jugador 2" 
	Then I should see "83"
	And I should see "83"

