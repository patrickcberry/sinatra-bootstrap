require 'rubygems'
require 'sinatra'
require 'data_mapper'
require 'sinatra/flash'
require 'sinatra/redirect_with_flash'

require 'sinatra/reloader'                                # comment out in production
 
configure do
  # enable :sessions
  set :port, 80
  set :bind, '0.0.0.0'
  SITE_TITLE = "SBT"
  SITE_DESCRIPTION = "Sinatra Bootstrap Template"
end

['/','/home'].each do |route|
  get route do
    erb :home
  end
end

get '/about' do
  erb :about
end

not_found do
  erb :notfound
end

error do
  erb :error
end