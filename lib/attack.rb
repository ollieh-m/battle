class Attack

	def attack(player)
		player.reduce(Random.rand(21))
	end

	def safe_attack(player)
		player.reduce(10)
	end

end