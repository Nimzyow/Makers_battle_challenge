feature "attack" do
  scenario "confirmation of attack on player 2 after attack button is clicked" do
    sign_in_and_play
    click_button("Attack!")
    expect(page).to have_content("Mittens HP is 90")
  end
  scenario "both have 80 HP" do
    sign_in_and_play
    click_button("Attack!")
    click_button("Attack!")
    click_button("Attack!")
    click_button("Attack!")
    expect(page).to have_content("Dave HP is 80\nMittens HP is 80")
  end
  
end