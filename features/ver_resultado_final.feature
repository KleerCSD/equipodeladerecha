Feature: Ver Resultado Final
	Como Juan 
	Me gustaria ver el resultado
	para identificar un ganador

Scenario: Ver Resultado Final Gano Jugador 1
	Given I open the web app
	When I press "VerResultadoFinal"
	Then I should see "Gano Jugador 1"

