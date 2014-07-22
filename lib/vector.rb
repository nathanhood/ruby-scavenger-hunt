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
    array = []
    self.each do |num|
      array << num
    end
    array << number
    VectorPoint.[](*array)
  end

end
