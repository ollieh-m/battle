feature 'safe attack' do
	scenario 'returns confirmation' do
		sign_in_and_play
		click_button('Safe Attack')
		expect(page).to have_content('Mittens was attacked')
	end
	scenario 'and reduces opponent HPs by 10' do
		sign_in_and_play
		click_button('Safe Attack')
		expect(page).to have_content('Mittens: 50HP')
	end
end