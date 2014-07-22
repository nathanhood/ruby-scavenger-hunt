

class VectorPoint

  attr_reader :x, :y

  def initialize(x, y)
    @x = x
    @y = y
  end

  def distance(vector)
    distance = Math.sqrt((vector.x - @x)**2 + (vector.y - @y)**2)
  end

end
