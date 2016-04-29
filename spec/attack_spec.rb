require 'attack'

describe Attack do

	subject(:attack){ described_class.new }
	let(:victim){ double(:victim) }
	let(:perpetrator){ double(:perpetrator) }

	context '#standard attack' do
		it 'reduces player\'s HPs by a random amount' do
			allow(Random).to receive(:rand){ 12 }
			expect(victim).to receive(:reduce).with(12)
			attack.attack(victim,perpetrator)
		end
	end

	context '#safe attack' do
		it 'reduces player\'s HPs by 10' do
			expect(victim).to receive(:reduce).with(10)
			attack.safe_attack(victim,perpetrator)
		end
	end

	context '#risky attack' do
		it 'reduces player\'s HPs by up to 30 or own HPs by up to 30' do

		end
	end
	
end