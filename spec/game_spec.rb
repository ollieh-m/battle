
require 'game'

describe Game do
	subject(:game) { described_class.new(player_1, player_2, attack) }
	let(:player_1) { double :player }
	let(:player_2) { double :player }
	let(:attack) { double :attack }

	describe "#initialize" do
		it 'returns the name of Player 1' do
			expect(game.player_1).to eq player_1
		end

		it 'returns the name of Player 2' do
			expect(game.player_2).to eq player_2
		end
	end

	describe '#attack' do
    	it 'passes the relevant method to the attack object with the current opponent as the argument' do
      		expect(attack).to receive(:attack).with(player_2)
      		game.attack("Attack")
    	end
	end

	describe '#current_turn' do
		it 'starts with player 1' do
			expect(game.current_turn).to eq player_1
		end

		it 'switches turns from player 1 to player 2' do
			game.switch_turn
			expect(game.current_turn).to eq player_2
		end
	end

	describe '#current_opponent' do
		it 'starts with player 2' do
			expect(game.current_opponent).to eq player_2
		end

		it 'opponent switches from player 2 to player 1' do
			game.switch_turn
			expect(game.current_opponent).to eq player_1
		end
	end

	describe '#game_over' do
		it 'ends the game if the current opponent reaches 0HP' do
			allow(player_2).to receive(:hit_points) { 0 }
			expect(game).to be_over
		end
	end


end
