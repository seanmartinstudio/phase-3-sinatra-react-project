class CatagoriesController < ApplicationController

#needed 'use CatagoriesController' in config.ru, then inhereting from Application Controller

    get "/categories-live" do
      "Categories Controller Live!"
    end

    #create
    post "/categories" do
        categories = Category.create(name: params[:name])
        categories.to_json
    end

    #read all
    get "/categories" do
        categories = Category.all 
        categories.to_json
    end

    #read by id
    get "/categories/:id" do
        categories = Category.find(params[:id])
        categories.to_json
    end

    #update
    patch "categories/:id" do

    end

    #delete
    delete "categoreis/:id" do

    end

  end