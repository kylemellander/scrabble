require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('/', {:type => :feature}) do

  it("properly opens up the webpage") do
    visit('/')
    expect(page).to have_content('Scrabble!')
  end

  it("outputs the scrabble score of a word on a new page") do
    visit('/')
    fill_in('word', :with=>"joSue")
    click_button('Submit')
    expect(page).to have_content('12')
  end
end
