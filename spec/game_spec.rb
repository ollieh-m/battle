require 'game'

describe Game do
  subject(:game) { described_class.new }
  let(:player){ spy :player }


  describe "#attack" do
    it "attacks other player" do
      expect(player).to receive(:receive_damage)
      game.attack(player)
    end
  end

end
