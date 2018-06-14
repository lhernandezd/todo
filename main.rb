require 'sinatra'
require './config'
#Rutas
get '/' do
    erb :index
end