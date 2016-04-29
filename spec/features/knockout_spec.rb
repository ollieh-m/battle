feature 'try to knock out opponent' do
	
	scenario 'if knock-out attack deducts 20 points the opponent also misses a turn' do
		sign_in_and_play
		allow(Random).to receive(:rand){ 20 }
		click_button('Attempt Knock-out')
		click_button('OK')
		expect(page).to have_content("Dave's turn")
	end

end