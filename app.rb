require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"

# As a user I can list all the restaurants
# As a user I can see one restaurant's details
# As a user I can add a restaurant

get "/" do
  @restaurants = Restaurant.all
  erb :index
end


get "/restaurants/:id" do
  @restaurant = Restaurant.find(params[:id])
  erb :show
end
