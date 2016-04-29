require 'attack'

describe Attack do

	subject(:attack){ described_class.new }
	let(:opponent){ double(:opponent) }

	context '#standard attack' do
		it 'reduces player\'s HPs by a random amount' do
			allow(Random).to receive(:rand){ 12 }
			expect(opponent).to receive(:reduce).with(12)
			attack.attack(opponent)
		end
	end

	context '#safe attack' do
		it 'reduces player\'s HPs by 10' do
			expect(opponent).to receive(:reduce).with(10)
			attack.safe_attack(opponent)
		end
	end
end