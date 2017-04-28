require('word')
require('definition')
require('rspec')

describe(Word) do

  describe('#text') do
    it('returns the text of the word') do
      test_word = Word.new(:text =>'hello')
      expect(test_word.text()).to(eq('hello'))
    end
  end

  describe('.all') do
    it('returns the array of the words being saved') do
      expect(Word.all()).to(eq([]))
    end
  end

  describe('#definitions') do
    it('returns the array of difinitions for the word') do
      test_word = Word.new(:text =>'hello')
      expect(test_word.definitions).to(eq([]))
    end
  end


end
