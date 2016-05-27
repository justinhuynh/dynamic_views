require 'sinatra'
require 'sinatra/reloader'
require 'pry'

get '/' do
  "hello world"
end

# we will never get here
get '/' do
  "blah"
end

get '/cool_dynamic_route/:stuff' do
  @stuff = params[:stuff]
  "<h1>{@stuff}</h1>"
end

get '/index' do
  @tasks = ["this", "that", "and", "the other"]
  erb :index
end

get '/fridge/:that_thing_in_my_fridge' do
  @some_var = params[:that_thing_in_my_fridge]
  erb :icebox
end
