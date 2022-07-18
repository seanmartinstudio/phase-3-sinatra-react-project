require 'pry'
class ToDosController < ApplicationController

#needed 'use ToDosController' in config.ru, then inhereting from Application Controller

#Create new To Do
post "/todos" do
todos = ToDo.create(
    name: params[:name],
    category_id: params[:category_id],
    complete: params[:complete]
)
todos.to_json
end

#Read all To Dos
get "/todos" do 
    todos = ToDo.all
    todos.to_json
end

#Read To Do by id
get "/todos/:id" do
    todos = ToDo.find(params[:id])
    todos.to_json
end

#Update the 'complete' parameter in To Do
patch "/todos/:id" do
    todos = ToDo.find(params[:id])
    todos.update(
        complete: params[:complete],
    )
    todos.to_json
end

#Delete To Do by id
delete "/todos/:id" do
    todos = ToDo.find(params[:id])
    todos.destroy
    todos.to_json
end


end