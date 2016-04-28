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

end
