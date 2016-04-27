require 'game'

describe Game do
	let(:player1){ double(:player1)}
	let(:player2){ double(:player2)}
	let(:victim) { spy(:victim) }
	subject(:game){ described_class.new player1,player2}

	context '#player1' do
		it 'retrieves the first player' do
			expect(game.player1).to eq player1
		end
	end

	context '#player2' do
		it 'retrieves the second player' do
			expect(game.player2).to eq player2
		end
	end

	context '#hit' do
		it 'makes the victim receive a hit' do
			game.hit(victim)
			expect(victim).to have_received(:receive_hit)
		end
	end

	context '#name' do
		it 'tells the correct player to return its name' do
			expect(player1).to receive(:name)
			game.name(player1)
		end
	end

	context '#hit_points' do
		it 'tells the correct player to return its hitpoints' do
			expect(player1).to receive(:hit_points)
			game.hit_points(player1)
		end
	end

end
