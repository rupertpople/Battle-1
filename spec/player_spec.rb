require 'player'

describe Player do
    player = Player.new("Superman")
    it "#name returns a Players name" do
        expect(player.name).to eq "Superman"
    end
end