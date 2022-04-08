class Player
    
    attr_accessor :hit_points, :name, :paralysed

    def initialize(name)
        @name = name
        @hit_points = 100
        @paralysed = false
    end

    def take_damage
        @hit_points -= damage_taken
    end

    def damage_taken
        rand(1..20)
    end

    def paralysed
        @paralysed = true
    end

end