require 'bundler/setup'
Bundler.require
require 'sinatra/reloader' if development?
require 'open-uri'
require 'sinatra/json'
require 'sinatra/activerecord'
require './models'
require './image_uploader.rb'

enable :sessions

get '/' do
    
 erb :index

end

get '/blog' do
    
 erb :blog

end

get '/biography' do
    
 erb :biography

end

get '/works' do
    
 erb :works

end

get '/activities' do
    
 erb :activities

end



