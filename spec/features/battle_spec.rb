require 'spec_helper'

feature 'Battle' do
	scenario "Player submits their name" do
		visit('/')
		fill_in('name', with:"Ollie")
		click_button('Submit')
		expect(page).to have_text("Hey Ollie! Welcome to the Battle...")
	end
end
