
feature "Hit points" do
  scenario "Show Player 2's hit point" do
    sign_in_and_play
    expect(page).to have_text("Bizarro Amy has 20 hit points. Prepare for BATTLE!")
  end
end
