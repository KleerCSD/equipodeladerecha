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

post '/' do
	puntaje = Puntaje.new
	@puntaje = puntaje.mostrar
	erb :home
end

post '/patada' do
	puntaje = Puntaje.new
	@puntaje = puntaje.mostrar
	erb :juego
end

