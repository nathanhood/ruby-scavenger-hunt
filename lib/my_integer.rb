
class Integer

  def factors
    array = []
    2.upto(self) do |i|
      if self % i == 0 && i != self
        array << i
      end
    end
    return array
  end

end
