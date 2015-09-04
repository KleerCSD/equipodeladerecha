Feature: Ver Puntaje de Energia
	Como Juan 
	Me gustaria ver mi puntaje de energia
	para luego saber si puedo cambiar por vida

Scenario: mostrar energia
	Given I open the web app
	When I press "MostrarEnergia"
	Then I should see "10-10"


