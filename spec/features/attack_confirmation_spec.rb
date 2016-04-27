
feature "Attack confirmation" do
  scenario "xxxx" do
    sign_in_and_play
    click_link "Attack!"
    expect(page).to have_content("Attack!!!")
  end
end
