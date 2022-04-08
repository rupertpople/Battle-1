require 'player'

describe Player do
    player = Player.new("Superman")
    it "#name returns a Players name" do
        expect(player.name).to eq "Superman"
    end

    it '#hit_points returns Player HP' do
        expect(player.hit_points).to eq 100
    end
end