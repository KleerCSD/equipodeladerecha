require 'sinatra'
require './lib/puntaje'

configure do
  enable :sessions
end

get '/' do
	erb :home
end

get '/juego' do
	erb :juego
end

post '/puntaje' do
	puntaje = Puntaje.new
	@puntaje = puntaje.mostrarVida
	erb :home
end

post '/energia' do
	puntaje = Puntaje.new
	@puntaje = puntaje.mostrarEnergia
	erb :home
end

post '/patadajugador1' do
	puntaje = Puntaje.new
	puntaje.quitarPuntaje("2",17)
	@puntaje = puntaje.mostrarVida
	erb :juego
end

