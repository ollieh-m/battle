class Attack

	def attack(victim,perpetrator)
		victim.reduce(Random.rand(21))
	end

	def safe_attack(victim,perpetrator)
		victim.reduce(10)
	end

end