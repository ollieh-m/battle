require 'player'

describe Player do
	subject(:player){ described_class.new("Nick")}

	context '#name' do
		it 'returns its name' do
			expect(player.name).to eq "Nick"
		end
	end
end