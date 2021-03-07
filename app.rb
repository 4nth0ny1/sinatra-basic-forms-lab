require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/puppy' do
    
    # @new_pooch = Puppy.new(params[:name], params[:breed], params[:age].to_i)
    @name = params[:name]
    @breed = params[:breed]
    @age = params[:age]
    
    erb :display_puppy
  end
end

# /:name/:breed/:age
<% binding.pry %>