
class Game
	attr_reader :player_1, :player_2, :active_player, :opponent

	def self.start_game(player1,player2)
		@game = new(player1,player2)
	end

	def self.game_id
		@game
	end

	def initialize(player_1, player_2)
		@player_1 = player_1
		@player_2 = player_2
		@active_player = player_1
		@opponent = player_2
	end

  def attack(player)
  	player.receive_damage
  end

	def change_active_player
		@active_player, @opponent = @opponent, @active_player
	end

	def over?
		@opponent.hp <= 0
	end

end
