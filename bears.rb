require("pry-byebug")
class Bear

  attr_reader( :name, :type, :stomach, :roar )

  def initialize( name, type, roar )

    @name = name
    @type = type
    @stomach = []
    @roar = roar

  end

  def add_food( food )

    @stomach.push( food )

  end

  def eat_fish( river )

    food = river.fishes().first()
    add_food( food )

    river.remove_fish( food )

  end

  def food_count()

    return @stomach.size()

  end

end
