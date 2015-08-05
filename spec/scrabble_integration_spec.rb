require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('/', {:type => :feature}) do

  it("properly opens up the webpage") do
    visit('/')
    expect(page).to have_content('Scrabble!')
  end

end
