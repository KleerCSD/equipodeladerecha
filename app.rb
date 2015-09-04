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
	erb :juego
end


get '/punete' do
	session['puntaje'] = Puntaje.new
	erb :punete
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
	@puntajeEnergia = puntaje.mostrarEnergia
	session['puntaje'] = puntaje
	erb :punete
end

post '/recargarenergiaj2' do
	puntaje = session['puntaje']	
	puntaje.subirEnergia "2"
	@puntajeEnergia = puntaje.mostrarEnergia
	session['puntaje'] = puntaje
	erb :punete
end

