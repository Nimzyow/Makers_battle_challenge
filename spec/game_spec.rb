require "game"

describe Game do

  let(:player_1) {double("player_1")}
  let(:player_2) {double("player_2")}
  subject {described_class.new(player_1, player_2)}

  context "has attributes" do
    it "player 1" do
      expect(subject).to have_attributes(player_1: player_1 )
    end
    it "player 2" do
      expect(subject).to have_attributes(player_2: player_2 )
    end

    it "current_player" do
      expect(subject).to have_attributes(current_player: player_1 )
    end

    it "turn" do
      expect(subject.instance_variable_get(:@turn)).to eql(true)
    end
  end
  context "has method" do
    it "#turn" do
      expect(subject).to respond_to(:turn)
    end 
  end
  context "method functionality" do
    it "#turn delegates to attack" do
      allow(player_1).to receive(:hp).and_return(100)
      allow(player_2).to receive(:hp).and_return(100)
      expect(subject).to receive(:attack).once
      subject.turn
    end
  end
end
