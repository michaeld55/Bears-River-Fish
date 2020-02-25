
require( "minitest/autorun" )
require( "minitest/reporters" )

require_relative( "../fish" )

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestFish < MiniTest::Test
  def setup()

    @fish1 = Fish.new( "Fred" )

  end

  def test_name()

    assert_equal( "Fred", @fish1.name())

  end
end
