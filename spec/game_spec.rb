require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1){ double :player }
  let(:player_2){ double :player }


  describe "#attack" do
    it "attacks other player" do
      expect(player_2).to receive(:receive_damage)
      game.attack(player_2)
    end
  end

  describe '#player_1' do
    it 'retrieves the first player' do
      expect(game.player_1).to eq player_1
    end
  end

  describe '#player_2' do
    it 'retrieves the second player' do
      expect(game.player_2).to eq player_2
    end
  end

  describe '#active_player' do
    it 'starts as player 1' do
      expect(game.active_player).to eq player_1
    end
  end

  describe '#change_active_player' do
    it 'changes active player' do
      game.change_active_player
      expect(game.active_player).to eq(player_2)
    end

    it 'changes active player twice' do
      game.change_active_player
      game.change_active_player
      expect(game.active_player).to eq(player_1)
    end
  end



end
