class River

  attr_reader(:name, :fishes)

    def initialize( name )

      @name = name
      @fishes = []

    end
end

# A river should have a name e.g. "Amazon"
# - A river should hold many fish
# - A fish should have a name
