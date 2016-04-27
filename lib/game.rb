class Game
	attr_reader :player1, :player2

	def initialize(player1, player2)
		@player1 = player1
		@player2 = player2
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

end
