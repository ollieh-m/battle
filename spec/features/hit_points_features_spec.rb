feature 'Hit points' do

  scenario "Player sees opponents hit points after signin" do
    sign_in_and_play
    expect(page).to have_text("Nick's hit points: 100")
  end

  scenario "Player 1 attacks Player 2 after signin" do
    sign_in_and_play
    click_button('Attack Nick')
    expect(page).to have_text("Ollie attacked Nick")
  end

  scenario "Attack reduces player 2 HP on first attack" do
    sign_in_and_play
    click_button('Attack Nick')
    expect(page).to have_text("Nick's hit points are now: 90")
    click_button('OK')
    expect(page).to have_text("Ollie's hit points: 100")
  end

  scenario "Second attack reduces player 1 HP" do
    sign_in_and_play
    click_button('Attack Nick')
    click_button('OK')
    click_button('Attack Ollie')
    expect(page).to have_text("Ollie's hit points are now: 90")
    click_button('OK')
    expect(page).to have_text("Nick's hit points: 90")
  end

end
