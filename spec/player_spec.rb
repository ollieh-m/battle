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

  describe '#self_harmer_check' do
    it 'is true if self_harmer switch has been turned to true' do
      dave.self_harmer
      expect(dave.self_harmer_check).to eq true
    end
    it 'resets self_harmer switch to false after check' do
      dave.self_harmer
      dave.self_harmer_check
      expect(dave.self_harmer_check).to eq false
    end
  end

  describe '#knocked_out_check' do
    it 'is true if knocked_out switch has been turned to true' do
      mittens.knocked_out
      expect(mittens.knocked_out_check).to eq true
    end
    it 'resets knocked_out switch to false after check' do
      mittens.knocked_out
      mittens.knocked_out_check
      expect(mittens.knocked_out_check).to eq false
    end
  end

end
