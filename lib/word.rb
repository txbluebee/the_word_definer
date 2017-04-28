class Word
  attr_accessor(:text)
  @@words = []

  def initialize(attributes)
    @text = attributes.fetch(:text)
    @definitions = []
  end

  def self.all
    @@words
  end

  def definitions
    @definitions
  end


end
