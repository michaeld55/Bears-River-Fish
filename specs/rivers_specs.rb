
require( "minitest/autorun" )
require( "minitest/reporters" )

require_relative( "../rivers" )
require_relative( "../fish" )

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestRiver < MiniTest::Test

  def setup()

    @river1 = River.new( "Amazon" )

  end

  def test_name()

    assert_equal( "Amazon", @river1.name())

  end

  def test_number_of_fish()

    assert_equal( 0, @river1.fishes().size())

  end

end
# A river should have a name e.g. "Amazon"
# - A river should hold many fish
# - A fish should have a name
