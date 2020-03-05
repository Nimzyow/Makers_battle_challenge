feature "attack" do
  scenario "confirmation of attack on player 2 after attack button is clicked" do
    sign_in_and_play
    click_button("Attack!")
    expect(page).to have_content("Mittens HP is 90")
  end
end