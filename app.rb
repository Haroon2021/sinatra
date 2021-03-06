require 'sinatra'
require "sinatra/reloader" if development?

get '/' do   #part of the URL
    "Hello World"       #output text on the website
  end

get '/secret' do
    'secret message'
end

get '/qwerty' do
  erb(:qwerty)  #embedded ruby helps evaluate ruby code and embed the answer in ruby code
end


get '/random-cat' do
  @name = ["Amigo", "Misty", "Almond"].sample
  erb(:index)
end 

post '/named-cat' do
  p params
  @name = params[:name]
  @age = params[:age]
  erb(:index)
end


get '/form' do
  erb(:form)
end