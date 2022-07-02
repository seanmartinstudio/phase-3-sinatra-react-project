class ToDosController < ApplicationController

#needed use ToDosController in config.ru, then inhereting from Application Controller

    get "/to-dos-live" do
        "To Do Controller Live!"
    end

end