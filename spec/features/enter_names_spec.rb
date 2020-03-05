#feature works like describe
#scenario works like it
feature "Enter names" do
  scenario "submitting names" do
    sign_in_and_play
    expect(page).to have_content("Dave vs. Mittens")
  end
end
