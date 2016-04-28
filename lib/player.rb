class Player

  DEFAULT_HIT_POINTS = 60

  attr_accessor :name, :hit_points

  def initialize(name, hit_points = DEFAULT_HIT_POINTS)
    @name = name
    @hit_points = hit_points
  end

  def reduce
    @hit_points -=Random.rand(21)
    @hit_points = 0 if @hit_points < 0
  end
end
