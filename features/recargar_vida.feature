Feature: Recargar Vida
	Como Juan 
	Me gustaria recarga vida
	para no morir

Scenario: Recargar vida del jugador 1 en 10ptos 
	Given I open the web app
	When I press "recargavida"
	Then I should see "110-100"
