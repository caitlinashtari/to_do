require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_expceptions, false)

describe("add list path", {:type => :feature}) do
  it("will allow the user to add a list to list page.") do
    visit('/')
    click_link('Add New List')
    fill_in('list_name', :with => "shopping list")
    click_button('add list')
    expect(page).to have_content("Success!")
  end
end
