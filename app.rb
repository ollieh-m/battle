require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:Player1_name] = params[:Player1_name]
    session[:Player2_name] = params[:Player2_name]
    redirect '/play'
  end

  get '/play' do
    @Player1_name = session[:Player1_name]
    @Player2_name = session[:Player2_name]
    erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
