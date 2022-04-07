class Player
    
    def initialize(name)
        @name = name
        @hit_points = 100
    end

    def name
        @name
    end

    def hit_points
        @hit_points
    end

    def get_hit
        @hit_points -= 10
    end
end