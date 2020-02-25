
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

  def test_add_fish()

    @river1.add_fish( @fish1 )
    assert_equal( 1, @river1.fishes().size())

  end

  def test_remove_fish()
    @river1.add_fish( @fish1 )
    @river1.remove_fish( @fish1 )
    assert_equal( 0, @river1.fishes().size())

  end

end
# A river should have a name e.g. "Amazon"
# - A river should hold many fish
# - A fish should have a name
# - A river should lose a fish when a bear takes a fish
