
feature "Enter names" do
  scenario "xxxx" do
    visit "/"
    fill_in "Player1_name", :with => "Amy"
    fill_in "Player2_name", :with => "Bizarro Amy"
    click_button "Submit"
    expect(page).to have_text("Hello Amy and Bizarro Amy. Prepare for BATTLE!")
  end
end
