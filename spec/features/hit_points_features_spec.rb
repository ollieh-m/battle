feature 'See hit points' do
  scenario "Player sees opponents hit points" do
    visit('/')
    fill_in('name1', with:"Ollie")
    fill_in('name2', with:"Chris")
    click_button('Submit')
    expect(page).to have_text("Chris's hit points: 100")
  end
end
