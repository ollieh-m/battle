class Game

 attr_reader :player_1, :player_2, :current_turn, :current_opponent

  def self.start_game(player1,player2)
    @game = Game.new(player1,player2)
  end

  def self.game
    @game
  end

	def initialize(player_1, player_2, attack=Attack.new)
		@player_1 = player_1
		@player_2 = player_2
    @current_turn = player_1
    @current_opponent = player_2
    @attack = attack
	end

	def attack(method)
      @attack.send(method, current_opponent, current_turn)
  end

  def switch_turn
    @current_turn, @current_opponent = @current_opponent, @current_turn
  end

  def over?
    @current_opponent.hit_points <= 0
  end
  
end
