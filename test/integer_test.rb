require 'test_helper'
require 'my_integer'

class IntegerTest < MiniTest::Unit::TestCase

  def setup
    # This is ran before all the tests. Useful
    # when preparing input data for the objects/methods you
    # wish to test.

  end

  def test_finding_factors_for_a_given_number
    assert_equal([2,3,4,6], 12.factors)
  end

end
