class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    "Hello World!!!"
    # { message: "Good luck with your project!" }.to_json
  end

  get "/categories" do
    categories = Category.all
    categories.to_json
    #return JSON
  end

  get "/categories/:id" do
    #retur JSON
  end

  get "/to_dos" do 
    #return JSON
  end

  get "/to_dos" do
    #return JSON
  end


end

