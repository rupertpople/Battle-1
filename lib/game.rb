class Game
    attr_reader :player1, :player2

    def initialize(player1, player2)
        @player1 = player1
        @player2 = player2
    end
    
    def attack(attacked_player)
        attacked_player.take_damage
        "You attacked #{attacked_player.name}! BAM!"
    end
end