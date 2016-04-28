def sign_in_and_play
  visit "/"
  fill_in "player_1_name", :with => "Amy"
  fill_in "player_2_name", :with => "Bizarro Amy"
  click_button "Submit"
end

def attack_confirmation
	click_link 'Attack'
    click_link 'OK'
end
