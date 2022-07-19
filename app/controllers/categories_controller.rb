require 'pry'

class CatagoriesController < ApplicationController

#needed 'use CatagoriesController' in config.ru, then inhereting from Application Controller

#Creates new To Do and Category (unless category has already been created)
post "/categories-todos" do
    category = Category.find_or_create_by(name: params[:category_name])
    todo = category.to_dos.create(
        name: params[:to_do_name],
        complete: params[:complete]
    )
    category.to_json
    todo.to_json
end

#create category
post "/categories" do
    categories = Category.create(name: params[:name])
    categories.to_json
end

#read all categories
get "/categories" do 
    categories = Category.all
    categories.to_json
end

#read by category by id
get "/categories/:id" do
    categories = Category.find(params[:id])
    categories.to_json

end




# Previous iteration of create new To Do and Category
# post "/categories-todos" do
#     category = Category.find_or_create_by(name: params[:category_name])
#     category.to_dos.create(
#         name: params[:to_do_name],
#         complete: params[:complete]
#     )
#     # category.includes(:to_dos).to_json
#     category.to_json
# end
end

