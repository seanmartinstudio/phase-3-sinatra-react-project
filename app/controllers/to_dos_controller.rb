require 'pry'
class ToDosController < ApplicationController

#needed 'use ToDosController' in config.ru, then inhereting from Application Controller

#create
post "/todos" do
todos = ToDo.create(
    name: params[:name],
    category_id: params[:category_id],
    complete: params[:complete]
)
todos.to_json
end

#read all
get "/todos" do 
    todos = ToDo.all
    todos.to_json
end

#read by id
get "/todos/:id" do
    todos = ToDo.find(params[:id])
    todos.to_json
end

#update
patch "/todos/:id" do
    todos = ToDo.find(params[:id])
    todos.update(
        name: params[:name],
        category_id: params[:category_id],
        complete: params[:complete]
    )
    todos.to_json
end

#delete
delete "/todos/:id" do
    todos = ToDo.find(params[:id])
    todos.destroy
    todos.to_json
end


end