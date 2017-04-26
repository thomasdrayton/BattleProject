feature "Hit Points" do
  scenario "Can see P1 HPs" do
    setup
    expect(page).to have_content("TOM HP: 100/100")
  end
end
