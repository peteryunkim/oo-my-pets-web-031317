class Fish
  
  attr_accessor :mood
  attr_reader :name

  def initialize(name="Nemo")
  	@name = name
  	@mood = "nervous"
  end

end