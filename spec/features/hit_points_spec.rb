
feature "Hit points" do
  scenario "Show Player 2's hit point" do
    visit "/"
    fill_in "Player1_name", :with => "Amy"
    fill_in "Player2_name", :with => "Bizarro Amy"
    click_button "Submit"
    expect(page).to have_text("Bizarro Amy has 20 hit points. Prepare for BATTLE!")
  end
end
