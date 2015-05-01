require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

# describe('path for car application', {:type=> :feature}) do
#   it("sends user to success page after adding car and adds car to car list") do
#     visit('/cars/new')
#     fill_in("make", :with=> "Toyota")
#     fill_in("model", :with=> "Carolla")
#     fill_in("year", :with=> 2004)
#     click_button('Add that car!')
#     expect(page).to have_content("Great! You added a car")
#     click_button('List all cars')
#     expect(page).to have_content("Toyota, Carolla, 2004")
#   end
# end
