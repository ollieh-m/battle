require 'player'

describe Player do

  subject(:dave) { described_class.new("Dave") }
  subject(:mittens) { described_class.new("Mittens") }

  describe "#initialize" do
    it 'returns the name of the player' do
      expect(dave.name).to eq "Dave"
    end
    it 'has a default hit points level' do
      expect(dave.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe "#reduce" do
    it 'reduces the hit points by the specified amount' do
      expect { mittens.reduce(12) }.to change { mittens.hit_points }.by(-12)
    end
  end

  describe '#machine?' do
    it 'is true if name is machine' do
      machine = Player.new("Machine")
      expect(machine).to be_machine
    end
  end

end
