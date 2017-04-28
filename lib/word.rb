class Word
  attr_accessor(:text)

  @@words = []
  def initialize(attributes)
    @text = attributes.fetch(:text)
    @id = @@words.length() + 1
    @definitions = []
  end

  def id
    @id
  end

  def self.all
    @@words
  end

  def self.clear
    @@words = []
  end

  def save
    @@words.push(self)
  end

  def self.find(id)
    found_word = nil
    @@words.each() do |word|
      if word.id() == id.to_i()
        found_word = word
      end
    end
    found_word
  end

  def definitions
    @definitions
  end

  def add_definition(phrase)
    @definitions.push(phrase)
  end
end
