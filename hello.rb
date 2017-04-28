require('sinatra')
require('sinatra/reloader')
require('./lib/word')
require('./lib/definition')
require('pry')
also_reload('lib/**/*.rb')

get('/') do
  @@words = Word.all()
  erb(:index)
end

post('/word_form') do
  word = params.fetch('word')
  test_word = Word.new(:text=> word)
  test_word.save()
  @@words = Word.all()
  erb(:success)
end
