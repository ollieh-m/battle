feature "allows computerised opponent" do
	
	scenario "signing up against a computer" do
		visit('/')
		fill_in :player_1_name, :with => 'Dave'
		check("Or tick to play against machine")
		click_button("Submit")
		expect(page).to have_content("Dave vs Machine")
	end

	scenario "attacking a computer" do
		visit('/')
		fill_in :player_1_name, :with => 'Dave'
		check("Or tick to play against machine")
		click_button("Submit")
		attack_and_ok
		expect(page).to have_content("Dave was attacked")
	end

end