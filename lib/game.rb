class Game
	attr_reader :player1, :player2, :current_player, :opponent

	def initialize(player1, player2)
		@player1 = player1
		@player2 = player2
		@current_player = @player2
		@opponent = @player1
	end

	def hit(victim)
		victim.receive_hit
	end

	def name(player)
		player.name
	end

	def hit_points(player)
		player.hit_points
	end

	def change_turn
		@current_player, @opponent = @opponent, @current_player
	end

end
