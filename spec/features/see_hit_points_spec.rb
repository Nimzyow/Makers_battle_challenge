feature "View hit points" do
  scenario "see Player 2 hit points" do
    sign_in_and_play
    expect(page).to have_content("Mittens HP is 100")
  end
end
