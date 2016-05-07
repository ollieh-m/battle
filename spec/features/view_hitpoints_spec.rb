feature 'View hit points' do
  scenario "User can see opponents hit points" do
    sign_in_and_play
    expect(page).to have_content 'Mittens: 60HP'
  end
  scenario "User can see their own hit points" do
  	sign_in_and_play
  	expect(page).to have_content 'Dave: 60HP'
  end
end
