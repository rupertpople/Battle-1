require 'game'

describe Game do
    let(:player1) { double "player1" }
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
end