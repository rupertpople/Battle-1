class Game
    def attack(attacked_player)
        attacked_player.hit_points -= 10
        "You attacked #{attacked_player.name}! BAM!"
    end
end