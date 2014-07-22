require 'test_helper'
require 'vector'

class VectorPointTest < MiniTest::Unit::TestCase

  def setup
    # This is ran before all the tests. Useful
    # when preparing input data for the objects/methods you
    # wish to test.

  end
=begin
  def test_adding_integer_to_vector
    result = VectorPoint[1, 2].add(1)
    assert_equal(2, result[0])
    assert_equal(3, result[1])
  end
=end

  def test_pushing_integer_into_vector
    result = VectorPoint[1, 2] << 3
    assert_equal(1, result[0])
    assert_equal(2, result[1])
    assert_equal(3, result[2])
  end

  def test_method_that_calculates_angle_between_two_vectors
    point1 = VectorPoint[2,3]
    point2 = VectorPoint[3,1]
    angle = VectorPoint.calculate_angle(point1, point2)
    assert_equal(angle, 0.26730477096022687)
  end

  def test_instance_method_calculates_angle_between_two_vectors
    angle = VectorPoint[2,3].calculate_angle(VectorPoint[3,1])
    assert_equal(angle, 0.6610431688506868)
  end
end
