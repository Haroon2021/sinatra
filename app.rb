require 'sinatra'
require "sinatra/reloader" if development?

get '/' do   #part of the URL
    "Hello World"       #output text on the website
  end

get '/secret' do
    'secret message'
end

get '/qwerty' do
  erb(:qwerty)
end


get '/cat' do
  @name = ["Amigo", "Misty", "Almond"].sample
  erb(:index)
end