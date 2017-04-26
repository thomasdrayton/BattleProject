feature "Takes names" do
scenario "expects players to fill in their name" do
  setup
  expect(page).to have_content("TOM Vs AHMED")
end
end
