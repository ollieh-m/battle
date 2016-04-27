require 'player'

describe Player do
	subject(:player){ described_class.new("Nick")}

	context '#name' do
		it 'returns its name' do
			expect(player.name).to eq "Nick"
		end
	end

	context '#hit_points' do
		it 'returns its hit_points' do
			expect(player.hit_points).to eq Player::DEFAULT_HIT_POINTS
		end
	end

	context '#receive_hit' do
		it 'reduces HP by 10' do
			expect{player.receive_hit}.to change{player.hit_points}.by -10
		end
	end

end
