class River

  attr_reader(:name, :fishes)

    def initialize( name )

      @name = name
      @fishes = []

    end

    def add_fish( new_fish)

      @fishes.push( new_fish )

    end

    def remove_fish( removed_fish )

      @fishes.delete( removed_fish )

    end

    def fish_count

      @fishes.size()

    end
end


# A river should have a name e.g. "Amazon"
# - A river should hold many fish
# - A fish should have a name
