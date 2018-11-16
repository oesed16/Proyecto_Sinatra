require 'sinatra'
require 'make_todo'

get '/' do
    @tasks = Tarea.all
    erb :index
end
 
post '/' do
    Tarea.create(params["title"])
    redirect '/'
end

put '/update/:id' do
    Tarea.update(params["id"])
    redirect '/'
end

delete '/delete/:id' do
    Tarea.destroy(params["id"])
    redirect '/'
end






