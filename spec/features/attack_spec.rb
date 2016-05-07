feature "attack" do
  scenario "and receive confirmation" do
    sign_in_and_play
    click_button 'Standard Attack'
    expect(page).to have_content 'Mittens was attacked'
  end

  scenario "and reduce Player 2 HP by a random amount" do
    sign_in_and_play
    allow(Random).to receive(:rand) { 10 }
    click_button 'Standard Attack'
    expect(page).to have_content 'Mittens: 50HP'
  end

  scenario "on second attack player 1 gets attacked" do
    sign_in_and_play
    allow(Random).to receive(:rand) { 10 }
    attack_and_ok
    click_button 'Standard Attack'
    expect(page).to have_content 'Dave was attacked'
  end

  scenario "and reduce player 1 HP by 10" do
    sign_in_and_play
    allow(Random).to receive(:rand) { 10 }
    attack_and_ok
    click_button 'Standard Attack'
    expect(page).to have_content 'Dave: 50HP'
  end
end
