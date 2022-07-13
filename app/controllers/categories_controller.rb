require 'pry'

class CatagoriesController < ApplicationController

#needed 'use CatagoriesController' in config.ru, then inhereting from Application Controller

#create category
post "/categories" do
    categories = Category.create(name: params[:name])
    categories.to_json
end

#read
get "/categories" do 
    categories = Category.all
    categories.to_json
end

#read by id
get "/categories/:id" do
    categories = Category.find(params[:id])
    categories.to_json

end


end

