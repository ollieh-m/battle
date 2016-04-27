require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $game = Game.new(Player.new(params[:name1]), Player.new(params[:name2]))
    redirect '/play'
  end

  get '/play' do
    @game = $game
    @game.change_turn
    #attack button needs a different name
    erb(:play)
  end

  get '/attack' do
    @game = $game
    #if turn is true
    @game.hit(@game.opponent)
    #elsif turn is false
      #@game.hit(@game.player1)
    #within the attack view, the description will depend on whose turn it was
    erb(:attack)
  end

  #start the server if ruby file executed directly
  run! if app_file == $0

end
