class ToDosController < ApplicationController

#needed 'use ToDosController' in config.ru, then inhereting from Application Controller

    get "/to-dos-live" do
        "To Do Controller Live!"
    end

    #create
    get "/to-dos-get" do
        # todos = ToDo.create(
        #     name: params[:name],
        #     category_id: params[:category_id],
        #     complete: params[:complete]
        # )
        # todos.to_json
        "FooBar"
    end

    # #read all
    # get "to-dos" do

    # end

    # #read by id
    # get "to-dos/:id" do

    # end

    # #update
    # patch "to-dos/:id" do

    # end

    #delete
    # delete "to-dos/:id" do

    # end

end