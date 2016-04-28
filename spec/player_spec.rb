require 'player'
describe Player do
subject(:player) { Player.new("Crab") }
subject(:player2) { Player.new("Cat") }

  describe "#name" do
    it "returns player's name" do
    expect(player.name).to eq("Crab")
    end
  end

  describe "#hp" do
    it "returns player's hp" do
    expect(player.hp).to eq described_class::DEFAULT_HP
    end
  end

  # describe "#receive_damage" do
  #   it "reduces player's hp" do
  #  		expect{player.receive_damage}.to change{player.hp}.by -10
  #   end
  # end

  describe "#attack" do
    it "attack other player" do
    	player.attack(player2)
   		expect{player2.receive_damage}.to change{player2.hp}.by -10
    end
  end

end
