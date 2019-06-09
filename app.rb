require 'sinatra/base'
require './lib/user.rb'

class Chitter < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/sign-up' do
    @name = params[:name]
    @email = params[:email]
    @password = params[:password]
    $user = User.new(@name,@email,@password)
    redirect '/home'
  end

  get '/home' do
    @display_name = $user.name
    erb(:home)
  end

  run! if app_file == $0

end
