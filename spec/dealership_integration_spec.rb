require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('path for dealership form', {:type=> :feature}) do
  it("brings user to dealership form") do
    visit('/')
    click_button('Add Dealerships')
    expect(page).to have_content("Add your Dealership")
  end
end

describe('path for dealerships', {:type=> :feature}) do
  it("brings user to dealership form") do
    visit('/')
    click_button('See Dealerships')
    expect(page).to have_content("All Dealerships")
  end
end
