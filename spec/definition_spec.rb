require('definition')
require('rspec')

describe(Definition) do
  describe('#phrase') do
    it('returns the sentence of the definition') do
      test_phrase = Definition.new(:phrase =>'meaning of the word')
      expect(test_phrase.phrase()).to(eq('meaning of the word'))
    end
  end
end
