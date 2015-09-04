Feature: Ver Puntaje de Vida
	Como Juan 
	Me gustaria ver mi puntaje de vida
	para luego saber si estoy ganando

Scenario: mostrar puntaje
	Given I open the web app
	When I press "MostrarPuntaje"
	Then I should see "100-100"
