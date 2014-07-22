require 'matrix'

class VectorPoint < Vector

  def self.path_length(*vectors)
    if vectors.length <= 1
      return nil
    end
    path_length = 0
    # vectors.sort! { |v1, v2| v1[0] <=> v2[0] }
    vectors.each_index do |i|
      unless vectors[(i + 1)] == nil
        dist = vectors[i].distance(vectors[(i + 1)])
        path_length += dist
      end
    end
    return path_length
  end

  def distance(vector)
    distance = Math.sqrt((vector[0] - self[0])**2 + (vector[1] - self[1])**2)
  end

  def <<(number)
    VectorPoint.elements(self.to_a << number)
  end

  def self.calculate_angle(vector1, vector2)
    hyp1 = Math.sqrt(vector1[0]**2 + vector1[1]**2)
    hyp2 = Math.sqrt(vector2[0]**2 + vector2[1]**2)
    angle1 = Math.cos(vector1[0] / hyp1)
    angle2 = Math.cos(vector2[0] / hyp2)
    radians = angle1 - angle2
  end

  def calculate_angle(vector)
    hyp1 = Math.sqrt(self[0]**2 + self[1]**2)
    hyp2 = Math.sqrt(vector[0]**2 + vector[1]**2)

    angle1 = Math::acos(self[0] / hyp1)
    angle2 = Math::acos(vector[0] / hyp2)
    
    radians = angle1 - angle2
  end

end
