feature "Start game" do
  scenario "User enters name" do
    sign_in_and_play
    expect(page).to have_content 'Dave vs Mittens'
  end
end
