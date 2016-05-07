require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/attack'

class Battle < Sinatra::Base

  before do
    @game = Game.game
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    @game = Game.start_game(player_1,player_2)
    redirect '/play'
  end

  get '/play' do
    if @game.current_turn.machine?
      @game.attack("attack")
      @game.over? ? redirect('/game-over') : redirect('/attack-confirmation')
    else
      erb :play
    end
  end

  get '/game-over' do
    erb(:game_over)
  end

  post '/attack' do
    @game.attack(params[:attack_method])
    redirect('/game-over') if @game.over?
    redirect('/attack-backfire') if @game.current_turn.self_harmer_check
    redirect('/attack-knockout') if @game.current_opponent.knocked_out_check
    redirect('/attack-confirmation')
  end

  get '/attack-confirmation' do
    erb(:attack)
  end

  get '/attack-backfire' do
    erb(:backfire)
  end

  get '/attack-knockout' do
    erb(:knockout)
  end

  post '/switch-turns' do
    @game.switch_turn
    redirect '/play'
  end

  # # start the server if ruby file executed directly
  run! if app_file == $0
end
