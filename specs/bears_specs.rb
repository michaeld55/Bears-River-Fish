
require( "minitest/autorun" )
require( "minitest/reporters" )

require_relative( "../bears" )
require_relative( "../rivers")
require_relative( "../fish")


Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestBear < MiniTest::Test

  def setup()

    @bear1 = Bear.new( "Yogi", "Grizzly" )
    @fish1 = Fish.new( "Fred" )
    @fish2 = Fish.new( "Finn" )
    @river1 = River.new( "Amazon" )

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

  def test_add_food()

    @bear1.add_food( @fish1 )
    assert_equal(1, @bear1.stomach().size())

  end

  def test_eat_fish()

    @river1.add_fish( @fish1 )
    @river1.add_fish( @fish2 )
    @bear1.eat_fish( @river1 )
    assert_equal( 1, @bear1.stomach().size())
    assert_equal( 1, @river1.fishes().size)

  end
end


# - A bear should have a name e.g. "Yogi" and a type e.g. "Grizzly"
# - A bear should have an empty stomach ( maybe an array )
#
# - A bear should be able to take a fish from the river
