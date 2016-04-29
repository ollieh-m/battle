require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    @game = Game.start_game(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = Game.game_id
    erb(:play)
  end

  get '/attack' do
    @game = Game.game_id
    @game.attack(@game.opponent)
    if @game.over?
      erb(:game_over)
    else
      erb(:attack)
    end
  end

  post '/swap' do
    @game = Game.game_id
    @game.change_active_player
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
