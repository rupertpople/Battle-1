require 'player'

describe Player do
    player = Player.new("Superman")
    it "#name returns a Players name" do
        expect(player.name).to eq "Superman"
    end

    it '#hit_points returns Player HP' do
        expect(player.hit_points).to eq 100
    end

    describe "#take_damage" do
      it 'should take a random amount of damage between 0 and 20' do
        allow(player).to receive(:damage_taken).and_return(20)
        player.take_damage  
        expect(player.hit_points).to eq 80
      end
    end
end