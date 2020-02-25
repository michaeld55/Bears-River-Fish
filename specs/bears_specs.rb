
require( "minitest/autorun" )
require( "minitest/reporters" )

require_relative( "../bears" )

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestBear < MiniTest::Test

  def setup()

    @bear1 = Bear.new( "Yogi", "Grizzly" )

  end

  def test_name()

    assert_equal( "Yogi", @bear1.name())

  end

  def test_type()

    assert_equal( "Grizzly", @bear1.type())

  end

  def test_stomach_empty()

    assert_equal( 0, @bear1.stomach().size())

  end
end


# - A bear should have a name e.g. "Yogi" and a type e.g. "Grizzly"
# - A bear should have an empty stomach ( maybe an array )
#
# - A bear should be able to take a fish from the river
