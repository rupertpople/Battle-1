require 'game'

describe Game do
    it "#attack will return confirmation" do 
        player2 = Player.new("Superman")
        expect(subject.attack(player2)).to eq("You attacked #{player2.name}! BAM!")
    end
    it "#attack will reduce player hit points by 10" do
        player2 = Player.new("Superman")
        subject.attack(player2)
        expect(player2.hit_points).to eq 90
    end
end