class Attack

	def attack(victim,perpetrator)
		victim.reduce(Random.rand(21))
	end

	def safe_attack(victim,perpetrator)
		victim.reduce(10)
	end

	def risky_attack(victim,perpetrator)
		damage = Random.rand(61)
		if damage < 30 
			perpetrator.reduce(30-damage)
			perpetrator.self_harmer 
		else
			victim.reduce(damage-30)
		end
	end

	def knockout(victim,perpetrator)
		damage = Random.rand(21)
		victim.knocked_out if damage == 20
		victim.reduce(damage)
	end

end