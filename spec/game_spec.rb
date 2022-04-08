require 'game'

describe Game do
    let(:player1) { double "player1", name: "Megasaur" }
    let(:player2) { double "player2", name: "Superman"}
    let(:subject) { described_class.new(player1, player2)}

    it 'knows who is player1' do
        expect(subject.player1).to eq player1
    end

    it 'knows who is player2' do
        expect(subject.player2).to eq player2
    end
    
    it "#attack will return confirmation" do 
        allow(player2).to receive(:take_damage)
        expect(subject.attack(player2)).to eq("You attacked #{player2.name}! BAM!")
    end
    it "#attack will reduce player hit points by 10" do
        expect(player2).to receive(:take_damage)
        subject.attack(player2)
    end

    it "#change_turn will change turn from player1 to player 2" do
        expect(subject.change_turn).to eq(player1)
    end

    it "will allow player2 to attack player1 during player2s turn" do
        subject.change_turn
        allow(player1).to receive(:take_damage)
        expect(subject.attack(player1)).to eq("You attacked #{player1.name}! BAM!")
    end

end
