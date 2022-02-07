require 'sinatra'
require "sinatra/reloader" if development?

get '/' do   #part of the URL
    "Hello World"       #output text on the website
  end

get '/secret' do
    'secret message'
end

get '/secret2' do
  'qwerty'
end


get '/cat' do
    '<div style="border:4px dashed red;">
    <img src="https://i.imgur.com/jFaSxym.png">
    </div>'   # code for pushing an image to a website img src is the source followed by the data source
end