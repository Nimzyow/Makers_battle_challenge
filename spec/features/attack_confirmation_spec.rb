feature "attack" do
  scenario "confirmation of attack on player 2 after attack button is clicked" do
    sign_in_and_play
    click_button("Attack!")
    expect(page).to have_content("Mittens HP is 100")
  end
  scenario "both have 80 HP" do
    sign_in_and_play
    5.times { click_button("Attack!") }
    expect(page).to have_content("Dave HP is 80\nMittens HP is 80")
  end
  scenario "A message is displayed saying it is Mittens turn to attack" do
    sign_in_and_play
    click_button("Attack!")
    expect(page).to have_content("Daves turn to attack")
  end
  scenario "Game over displayed when one player HP = 0" do
    sign_in_and_play
    click_button("Attack")
  end

end
