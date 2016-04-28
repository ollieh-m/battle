
feature "Attack confirmation" do
  scenario "Player 1 gets confirmation when they attack Player 2" do
    sign_in_and_play
    click_link "Attack!"
    expect(page).to have_content("Amy attacked Bizarro Amy!")
  end

  scenario 'reduce Player 2 HP by 10' do
    sign_in_and_play
    click_link 'Attack'
    click_link 'OK'
    expect(page).not_to have_content 'Bizarro Amy has 100 hit points'
    expect(page).to have_content 'Bizarro Amy has 90 hit points'
  end
end
