require 'attack'

describe Attack do

	subject(:attack){ described_class.new }
	let(:victim){ double(:victim, reduce: nil, knocked_out: nil ) }
	let(:perpetrator){ double(:perpetrator, reduce: nil, :self_harmer => nil ) }

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
		it 'reduces player\'s HPs by up to 30 if random number is more than 30' do
			allow(Random).to receive(:rand){ 60 }
			expect(victim).to receive(:reduce).with(30)
			attack.risky_attack(victim,perpetrator)
		end
		it 'reduces own HPs by up to 30 if random number is less than 30' do
			allow(Random).to receive(:rand){ 0 }
			expect(perpetrator).to receive(:reduce).with(30)
			attack.risky_attack(victim,perpetrator)
		end
		it 'records that perpetrator has harmed themself if random number is less than 30' do
			allow(Random).to receive(:rand){ 0 }
			expect(perpetrator).to receive(:self_harmer)
			attack.risky_attack(victim,perpetrator)
		end
	end

	context '#knockout attack' do
		it 'reduces opponent HP by a random number up to 20' do
			allow(Random).to receive(:rand){ 20 }
			expect(victim).to receive(:reduce).with(20)
			attack.knockout(victim,perpetrator)
		end
		it 'records that the victim is knocked out if the knockout reduces hit points by 20' do
			allow(Random).to receive(:rand){ 20 }
			expect(victim).to receive(:knocked_out)
			attack.knockout(victim,perpetrator)
		end
	end
	
end