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
	@puntaje = puntaje.mostrarVida
    puntajes = @puntaje.split "-"
    @puntajejugador1 = puntajes[0]
	@puntajejugador2 = puntajes[1]
	session['puntaje'] = puntaje
	erb :juego
end

post '/patadajugador2' do
	puntaje = session['puntaje']
	puntaje.quitarPuntaje("1",17)
	@puntaje = puntaje.mostrarVida
    puntajes = @puntaje.split "-"
    @puntajejugador1 = puntajes[0]
	@puntajejugador2 = puntajes[1]
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



