feature 'Hit points' do
  scenario "Player sees opponents hit points" do
    sign_in_and_play
    expect(page).to have_text("Nick's hit points: 100")
  end

  scenario "Player 1 attacks Player 2" do
    sign_in_and_play
    click_button('Attack Nick')
    expect(page).to have_text("Ollie attacked Nick")
  end

  scenario "Attack reduces HP" do
    sign_in_and_play
    click_button('Attack Nick')
    expect(page).to have_text("Nick's HP has decreased")
    click_button('OK')
    expect(page).to have_text("Nick's hit points: 90")
  end
end
