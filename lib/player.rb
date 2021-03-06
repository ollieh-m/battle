class Player

  DEFAULT_HIT_POINTS = 60

  attr_reader :name, :hit_points

  def initialize(name, hit_points = DEFAULT_HIT_POINTS)
    @name = name
    @hit_points = hit_points
  end

  def reduce(amount)
    @hit_points -= amount
    @hit_points = 0 if @hit_points < 0
  end

  def machine?
    @name == "Machine"
  end

  def self_harmer
    @self_harmer = true
  end

  def self_harmer_check
    answer = @self_harmer
    @self_harmer = false
    answer
  end

  def knocked_out
    @knocked_out = true
  end

  def knocked_out_check
    answer = @knocked_out
    @knocked_out = false
    answer
  end
  
end
