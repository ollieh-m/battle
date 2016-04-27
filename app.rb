require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/names' do
    @Player1_name = params[:Player1_name]
    @Player2_name = params[:Player2_name] 
    erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
