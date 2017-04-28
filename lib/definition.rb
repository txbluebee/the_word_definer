class Definition
  attr_accessor(:phrase)

  def initialize(attributes)
    @phrase = attributes.fetch(:phrase)
  end
  
end
