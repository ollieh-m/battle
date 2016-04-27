def sign_in_and_play
  visit "/"
  fill_in "Player1_name", :with => "Amy"
  fill_in "Player2_name", :with => "Bizarro Amy"
  click_button "Submit"
end
