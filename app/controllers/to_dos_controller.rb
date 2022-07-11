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

end