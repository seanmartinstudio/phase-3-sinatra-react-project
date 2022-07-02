class CatagoriesController < ApplicationController

#needed use CatagoriesController in config.ru, then inhereting from Application Controller

    get "/categories-live" do
      "Categories Controller Live!"
    end
    
  end