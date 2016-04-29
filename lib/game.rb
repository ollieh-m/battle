
class Game
	attr_reader :player_1, :player_2, :active_player, :opponent

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

end
