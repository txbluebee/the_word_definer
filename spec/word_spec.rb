require('word')
require('definition')
require('rspec')

describe(Word) do

  before() do
    Word.clear()
  end

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

  describe(".clear") do
    it('clears words in the array @@words') do
      expect(Word.clear()).to(eq([]))
    end
  end

  describe('#save') do
    it('saves the word to the words array') do
      test_word = Word.new(:text =>'hello')
      test_word.save()
      expect(Word.all()).to(eq([test_word]))
    end
  end

  describe('#definitions') do
    it('returns the array of difinitions for the word') do
      test_word = Word.new(:text =>'hello')
      expect(test_word.definitions).to(eq([]))
    end
  end

  describe('#id') do
    it('returns the id number assigned to the word when created') do
      word_1 = Word.new(:text =>'hello')
      word_1.save()
      word_2 = Word.new(:text =>'world')
      word_2.save()
      expect(word_2.id()).to(eq(2))
    end

  describe('.find') do
    it('finds the word based on given id number') do
      word_1 = Word.new(:text =>'hello')
      word_1.save()
      expect(Word.find(word_1.id())).to(eq(word_1))
    end
  end

  end
end
