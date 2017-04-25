require 'capybara/rspec'
require 'app'


describe Battle do
  it "Homepage infrastructure working" do
    visit '/'
    expect(page).to have_content("Testing infrastructure working!")
  end

  it "expects players to fill in their name" do
    visit '/begin'
    fill_in 'name1', with: "Tom"
    fill_in 'name2', with: "Ahmed"
    expect(page).to have_text("Tom")
  end

end
