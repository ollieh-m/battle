feature 'See hit points' do
  scenario "Player sees opponents hit points" do
    sign_in_and_play
    expect(page).to have_text("Nick's hit points: 100")
  end
end
