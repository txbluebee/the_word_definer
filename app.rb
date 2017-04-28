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

post('/add_word') do
  user_input = params.fetch('word')
  test_word = Word.new(:text=> user_input)
  test_word.save()
  @@words = Word.all()
  erb(:index)
end

get('/words/:id') do
  word_id = params.fetch('id').to_i()
  @word = Word.find(word_id)
  @definitions = @word.definitions()
  erb(:word)
end


##Each word add definitions
get('/words/:id/add_definition') do
  word_id = params.fetch('id').to_i()
  @word = Word.find(word_id)
  erb(:definition_form)
end


post('/add_definition') do
  user_input = params.fetch('phrase')
  @new_phrase = Definition.new(:phrase => user_input)
  @word = Word.find(params.fetch('word_id').to_i())
  @word.add_definition(@new_phrase)
  @definitions = @word.definitions()
  erb(:word)
end
