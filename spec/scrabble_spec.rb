require('scrabble')
require('rspec')

describe('String#scrabble') do
  it("returns a scrabble score for a letter") do
    expect("a".scrabble()).to(eq(1))
  end

  it("returns a scrabble score for a word") do
    expect("kendra".scrabble()).to(eq(11))
  end

  it("returns value of a word with mixed case") do
    expect("Kendra".scrabble()).to(eq(11))
  end

  it("returns an error message if there is spaces in between characters") do
    expect("Ken dra".scrabble()).to(eq("Error: you can't do multiple words"))
  end

  it("returns an error message if there is a special character entered") do
    expect("Kendra!".scrabble()).to(eq("Error: you can't do special characters"))
  end

  it("returns an error message if there is a number is entered") do
    expect("Kendra3".scrabble()).to(eq("Error: you can't do special characters"))
  end
end
