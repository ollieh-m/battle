require 'player'
describe Player do
subject(:player) { Player.new("Crab") }

  describe "#name" do
    it "returns player's name" do
    expect(player.name).to eq("Crab")
    end
  end

end
