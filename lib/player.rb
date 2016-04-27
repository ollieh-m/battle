class Player
	DEFAULT_HIT_POINTS = 100
	attr_reader :name, :hit_points

	def initialize(name, hit_points = DEFAULT_HIT_POINTS)
		@name = name
		@hit_points = hit_points
	end

	def receive_hit
		@hit_points -= 10
	end

	def hit(victim)
		victim.receive_hit
	end


end
