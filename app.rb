require 'sinatra/base'

class Chitter < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/sign-up' do
    session[:name] = params[:name]
    redirect '/home'
  end

  get '/home' do
    @name = session[:name]
    @peep = session[:peep]
    erb(:home)
  end

  post '/post-peep' do
    session[:peep] = params[:peep]
    redirect '/home'
  end

  run! if app_file == $0

end
