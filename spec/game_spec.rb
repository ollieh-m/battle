require 'game'

describe Game do

	let(:victim){ spy(:victim) }
	subject(:game){ described_class.new }

	context '#hit' do
		it 'makes the victim receive a hit' do
			game.hit(victim)
			expect(victim).to have_received(:receive_hit)
		end
	end

end