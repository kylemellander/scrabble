require('sinatra')
require('sinatra/reloader')
require('./lib/scrabble')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/scrabble') do
  @word = params.fetch('word')
  @score = @word.scrabble()
  if @word[/[a-z]+/] != @word
    @error = 1
  end
  erb(:scrabble)
end
