require 'matrix'

class VectorPoint < Vector

  attr_reader :x, :y

  def distance(vector)
    distance = Math.sqrt((vector[0] - self[0])**2 + (vector[1] - self[1])**2)
  end

end
