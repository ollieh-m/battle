
class Game
	attr_reader :player_1, :player_2, :active_player, :opponent

	def initialize(player_1, player_2)
		@player_1 = player_1
		@player_2 = player_2
		@player_arr = [player_1, player_2]
		@active_player = player_1
		@opponent = player_2
	end

  def attack(player)
  	player.receive_damage
		change_active_player
  end

	def change_active_player
		@active_player = opponent_of(active_player)
	end

	def opponent_of(active_player)
		@player_arr.select { |p| p != active_player }.first
	end

end
