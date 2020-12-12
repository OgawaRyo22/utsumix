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
    
 @posts = Post.all

 erb :index

end

get '/blog' do
    
 @posts = Post.all

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

get '/post' do 

 @posts = Post.all
 erb :insert

end

post '/post' do 
  post = Post.create({

    title: params[:title],
  content: params[:content],
  })
  redirect '/post'
end

post '/post/:id/delete' do
  post = Post.find(params[:id])
  post.destroy
  redirect '/post'
end

post '/post/:id' do
  post = Post.find(params[:id])
  post.title = params[:title]
  post.content = params[:content]
  post.save
  redirect '/post'
end
