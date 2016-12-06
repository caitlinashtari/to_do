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

describe('viewing all of the lists', {:type => :feature}) do
  it('allows a user to see all of the lists that have been created') do
    list = List.new({:name => "Epicodus Homework", :id => nil})
    list.save()
    visit('/')
    click_link('View All Lists')
    expect(page).to have_content(list.name)
  end
end
