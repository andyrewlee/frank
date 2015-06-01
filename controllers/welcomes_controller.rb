class WelcomesController < ApplicationController
  get '/' do
    @title = "Welcome"
    erb :main_layout do
      erb :"welcomes/welcome"
    end
  end
end
