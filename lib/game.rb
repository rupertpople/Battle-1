class Game
    attr_reader :player1, :player2, :attacking_player, :defending_player

    def initialize(player1, player2)
        @player1 = player1
        @player2 = player2
        @attacking_player = @player2
    end
    
    def attack(attacked_player)
        if paralysed? == false
          attacked_player.take_damage
          "You attacked #{attacked_player.name}! BAM!"
        elsif paralysed? == true
          "You were paralysed and did not attack"
        end
    end

    def punch(attacked_player)
        attacked_player.take_damage
        attacked_player.paralysed
        "You punched #{attacked_player.name}, #{attacked_player.name} has been paralysed!"
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

    def paralysed?
        if @attacking_player.paralysed == true
            rand(1) > 0 ? true : false
        else
            false
        end
    end
end