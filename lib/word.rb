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



  def definitions
    @definitions
  end



end
