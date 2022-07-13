require 'pry'

class CatagoriesController < ApplicationController

#needed 'use CatagoriesController' in config.ru, then inhereting from Application Controller

#create category
post "/categories" do
    categories = Category.create(name: params[:name])
    categories.to_json
end

post "/categories-todos" do
    category = Category.find_or_create_by(name: params[:category_name])
    category.to_dos.create(
        name: params[:to_do_name],
        complete: params[:complete]
    )
    # category.includes(:to_dos).to_json
    category.to_json
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


end

