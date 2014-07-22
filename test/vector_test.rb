require 'test_helper'
require 'vector'

class VectorPointTest < MiniTest::Unit::TestCase

  def setup
    # This is ran before all the tests. Useful
    # when preparing input data for the objects/methods you
    # wish to test.

  end

  def test_adding_integer_to_vector
    result = VectorPoint[1, 2].add(1)
    assert_equal(2, result[0])
    assert_equal(3, result[1])
  end
end
