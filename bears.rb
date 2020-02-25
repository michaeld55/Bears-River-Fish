require("pry-byebug")
class Bear

  attr_reader( :name, :type, :stomach )

  def initialize( name, type )

    @name = name
    @type = type
    @stomach = []

  end

  def add_food( food )

    @stomach.push( food )
    # binding.pry
  end

  def eat_fish( river )

    food = river.fishes().first()
    add_food( food )

    river.remove_fish( food )
    # binding.pry


  end

end

# <!-- - A bear should have a name e.g. "Yogi" and a type e.g. "Grizzly"
# - A bear should have an empty stomach ( maybe an array )
#
# - A bear should be able to take a fish from the river -->
