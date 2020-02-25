class Bear

  attr_reader( :name, :type, :stomach )

  def initialize( name, type )

    @name = name
    @type = type
    @stomach = []

  end

end

# <!-- - A bear should have a name e.g. "Yogi" and a type e.g. "Grizzly"
# - A bear should have an empty stomach ( maybe an array )
#
# - A bear should be able to take a fish from the river -->
