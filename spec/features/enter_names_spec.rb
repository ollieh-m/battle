
feature "Enter names" do
  scenario "xxxx" do
    sign_in_and_play
    expect(page).to have_text("Hello Amy and Bizarro Amy. Prepare for BATTLE!")
  end
end
