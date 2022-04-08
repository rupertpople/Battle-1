class Game
    attr_reader :player1, :player2, :player_turn

    def initialize(player1, player2)
        @player1 = player1
        @player2 = player2
        @player_turn = @player1
    end
    
    def attack(attacked_player)
        attacked_player.take_damage
        change_turn
        "You attacked #{attacked_player.name}! BAM!"
    end

    def change_turn
        if @player_turn == @player1
            @player_turn = @player2
        else
            @player_turn = @player1
        end
    end

end