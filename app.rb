require 'sinatra'
require './lib/puntaje'

configure do
  enable :sessions
end

get '/' do
	erb :home
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
	#puntaje = Puntaje.new
	@puntaje = "110-100"
	erb :home
end


