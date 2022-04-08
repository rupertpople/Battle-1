class Game
    attr_reader :player1, :player2, :attacking_player, :defending_player

    def initialize(player1, player2)
        @player1 = player1
        @player2 = player2
        @attacking_player = @player2
    end
    
    def attack(attacked_player)
        attacked_player.take_damage
        "You attacked #{attacked_player.name}! BAM!"
    end

    def change_turn
        if @attacking_player == @player1
            @attacking_player = @player2
        else
            @attacking_player = @player1
        end
    end

    def defending_player
        if @attacking_player == @player1
            @defending_player = @player2
        else
            @defending_player = @player1
        end
    end

end