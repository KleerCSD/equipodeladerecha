require 'sinatra'
require './lib/puntaje'

configure do
  enable :sessions
end

get '/' do
	erb :home
end

post '/' do
	puntaje = Puntaje.new
	@puntaje = puntaje.mostrar
	erb :home
end
