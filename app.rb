require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"

# Controller + Router

get "/" do # localhost:4567/
  @restaurants = Restaurant.all
  erb :home
end

get "/restaurants/:id" do
  @resto = Restaurant.find(params[:id])
  erb :restaurant_page
end

get "/about" do # localhost:4567/about
  "My about page!"
end