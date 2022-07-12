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

end

#read by id
get "/categories/:id"

end

end