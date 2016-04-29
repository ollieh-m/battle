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
    params[:player_2_name] == "Machine" ? player_2 = Player.new("Machine") : player_2 = Player.new(params[:player_2_name])
    @game = Game.start_game(player_1,player_2)
    redirect '/play'
  end

  get '/play' do
    if @game.current_turn.name == "Machine"
      @game.attack("Attack")
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
    @game.over? ? redirect('/game-over') : redirect('/attack-confirmation')
  end

  get '/attack-confirmation' do
    erb(:attack)
  end

  post '/switch-turns' do
    @game.switch_turn
    redirect '/play'
  end

  # # start the server if ruby file executed directly
  run! if app_file == $0
end
