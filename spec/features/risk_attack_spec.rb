feature "risky attack" do

	scenario 'confirms damage on the perpetrator' do
		sign_in_and_play
		allow(Random).to receive(:rand){ 0 }
		click_button('Risky Attack')
		expect(page).to have_content("Dave's attack backfired! Dave was attacked")
	end

	scenario 'inflicts damage on the perpetrator' do
		sign_in_and_play
		allow(Random).to receive(:rand){ 0 }
		click_button('Risky Attack')
		expect(page).to have_content("Dave: 30HP")
	end

	scenario 'current turn can lose by inflicting self-damage' do
		sign_in_and_play
		allow(Random).to receive(:rand){ 0 }
		click_button('Risky Attack')
		click_button('OK')
		click_button('Safe Attack')
		click_button('OK')
		click_button('Risky Attack')
		expect(page).to have_content('Dave lost')
	end

end

