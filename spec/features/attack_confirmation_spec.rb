
feature "Attack confirmation" do
  scenario "Player 1 gets confirmation when they attack Player 2" do
    sign_in_and_play
    click_link "Attack!"
    expect(page).to have_content("Amy attacked Bizarro Amy!")
  end
end
