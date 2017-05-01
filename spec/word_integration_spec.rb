require('capybara/rspec')
require('./app')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the word path', {:type => :feature}) do
  it('displays the list of added words after user enters word and click "add"') do
    visit('/')
    fill_in('word', :with => 'hello')
    click_button('Add')
    expect(page).to have_content('hello')
  end
end
