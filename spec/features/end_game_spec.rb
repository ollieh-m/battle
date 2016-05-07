feature 'End game' do
  scenario "when player 2's HP reaches 0 first" do
    sign_in_and_play
    10.times { attack_and_ok }
    click_button('Standard Attack')
    expect(page).to have_content "Mittens lost"
  end
end
