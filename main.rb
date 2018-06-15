require 'sinatra'
require './config'

todos = []
#Rutas
get '/' do
    @todos = todos
    erb :index
end

get '/todos' do
    @todos = todos
    erb :index
end

get '/todos/create' do
    erb :create
end

post '/todos' do
    todos.push({
        "title": params[:title],
        "description": params[:description]
    })
    redirect '/todos' #Vuelve a la pagina
end