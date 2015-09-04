require 'sinatra'
require './lib/puntaje'

configure do
  enable :sessions
end

get '/' do
	erb :home
end

get '/juego' do
	session['puntaje'] = Puntaje.new
	@puntajejugador1 = session['puntaje'].getJugadorVida("1")
	@puntajejugador2 = session['puntaje'].getJugadorVida("2")
	@energiajugador1 = session['puntaje'].getJugadorEnergia("1")
	@energiajugador2 = session['puntaje'].getJugadorEnergia("2")
	erb :juego
end


get '/punete' do
	session['puntaje'] = Puntaje.new
	erb :punete
end

get '/principal' do
	session['puntaje'] = Puntaje.new
	session['nombre1'] = ""
session['nombre2'] = ""
session['tipo1'] = ""
session['tipo2'] = ""
	erb :principal
end


post '/puntaje' do
	puntaje = Puntaje.new
	@puntaje = puntaje.mostrarVida
	erb :home
end

post '/energia' do
	puntaje = Puntaje.new
	@energia = puntaje.mostrarEnergia
	erb :home
end

post '/recargavida' do
	puntaje = Puntaje.new
	puntaje.subirVida("1") 
	@puntaje = puntaje.mostrarVida
	erb :home
end

post '/patadajugador1' do
	puntaje = session['puntaje']
	puntaje.quitarPuntaje("2",17)
    @puntajejugador1 = puntaje.getJugadorVida("1")
	@puntajejugador2 = puntaje.getJugadorVida("2")
	@energiajugador1 = puntaje.getJugadorEnergia("1")
	@energiajugador2 = puntaje.getJugadorEnergia("2")
	session['puntaje'] = puntaje
	erb :juego
end

post '/patadajugador2' do
	puntaje = session['puntaje']
	puntaje.quitarPuntaje("1",17)
    @puntajejugador1 = puntaje.getJugadorVida("1")
	@puntajejugador2 = puntaje.getJugadorVida("2")
	@energiajugador1 = puntaje.getJugadorEnergia("1")
	@energiajugador2 = puntaje.getJugadorEnergia("2")
	session['puntaje'] = puntaje
	erb :juego
end

post '/punetej1' do
	puntaje = session['puntaje']
	puntaje.quitarPuntaje "2",15
	@puntajejugador1 = puntaje.getJugadorVida("1")
	@puntajejugador2 = puntaje.getJugadorVida("2")
	@energiajugador1 = puntaje.getJugadorEnergia("1")
	@energiajugador2 = puntaje.getJugadorEnergia("2")
	session['puntaje'] = puntaje
	erb :juego
end

post '/punetej2' do
	puntaje = session['puntaje']
	puntaje.quitarPuntaje "1",15
	@puntajejugador1 = puntaje.getJugadorVida("1")
	@puntajejugador2 = puntaje.getJugadorVida("2")
	@energiajugador1 = puntaje.getJugadorEnergia("1")
	@energiajugador2 = puntaje.getJugadorEnergia("2")
	session['puntaje'] = puntaje
	erb :juego
end

post '/resultadofinal' do
	puntaje = Puntaje.new
	puntaje.quitarPuntaje("2",17)
	puntaje.quitarPuntaje("2",17)
	puntaje.quitarPuntaje("2",17)
	puntaje.quitarPuntaje("2",17)
	puntaje.quitarPuntaje("2",17)
	puntaje.quitarPuntaje("2",17)
	puntaje.quitarPuntaje("2",17)
	@resultadofinal = puntaje.verResultadoFinal
	erb :home
end

post '/recargarenergiaj1' do
	puntaje = session['puntaje']	
	puntaje.subirEnergia "1"
	@puntajejugador1 = puntaje.getJugadorVida("1")
	@puntajejugador2 = puntaje.getJugadorVida("2")
	@energiajugador1 = puntaje.getJugadorEnergia("1")
	@energiajugador2 = puntaje.getJugadorEnergia("2")
	session['puntaje'] = puntaje
	erb :juego
end

post '/recargarenergiaj2' do
	puntaje = session['puntaje']	
	puntaje.subirEnergia "2"
	@puntajejugador1 = puntaje.getJugadorVida("1")
	@puntajejugador2 = puntaje.getJugadorVida("2")
	@energiajugador1 = puntaje.getJugadorEnergia("1")
	@energiajugador2 = puntaje.getJugadorEnergia("2")
	session['puntaje'] = puntaje
	erb :juego
end

post '/crearJuego' do
	
session['nombre1']=params["nombre1"]
session['nombre2']=params["nombre2"]
session['tipo1']=params["tipo1"]
session['tipo2']=params["tipo2"]
	
	erb :juego
end

post '/energiaporvida1' do
	puntaje = session['puntaje']	
	puntaje.subirVida "1"
	@puntajejugador1 = puntaje.getJugadorVida("1")
	@puntajejugador2 = puntaje.getJugadorVida("2")
	@energiajugador1 = puntaje.getJugadorEnergia("1")
	@energiajugador2 = puntaje.getJugadorEnergia("2")
	session['puntaje'] = puntaje
	erb :juego
end

post '/energiaporvida2' do
	puntaje = session['puntaje']	
	puntaje.subirVida "2"
	@puntajejugador1 = puntaje.getJugadorVida("1")
	@puntajejugador2 = puntaje.getJugadorVida("2")
	@energiajugador1 = puntaje.getJugadorEnergia("1")
	@energiajugador2 = puntaje.getJugadorEnergia("2")
	session['puntaje'] = puntaje
	erb :juego
end


