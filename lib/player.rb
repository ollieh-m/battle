class Player
attr_reader :name, :hp

	DEFAULT_HP = 100
	DEFAULT_DAMAGE = 10

def initialize(name, hp=DEFAULT_HP)
  @name = name
  @hp = hp
end

def receive_damage
	@hp -= Kernel.rand(16)
end




end
