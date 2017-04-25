require 'capybara/rspec'
require 'app'


describe Battle do
  it "Homepage infrastructure working" do
    visit '/'
    expect(page).to have_content("Testing infrastructure working!")
  end
end
