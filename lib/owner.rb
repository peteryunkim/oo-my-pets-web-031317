require 'pry'

class Owner
  @@owner = []

  attr_accessor :name, :new_fish, :new_cat, :new_dog, :pets, :mood
  

  def initialize(species)
  	@species = species
  	@@owner << self
    # binding.pry
    @pets = {
      :fishes => [],
      :dogs => [],
      :cats => []
    }
  end

  def self.all
  	@@owner
  end

  def self.reset_all
  	@@owner.clear
  end

  def self.count
  	@@owner.count
  end

  def species
  	@species
  end

  def say_species
  	"I am a #{@species}."
  end


  def buy_fish(fish_name)
    @new_fish = Fish.new(fish_name)
    @pets[:fishes] << new_fish
  end
  
  def buy_cat(cat_name)
    @new_cat = Cat.new(cat_name)
    @pets[:cats] << new_cat
  end

  def buy_dog(dog_name)
    @new_dog = Dog.new(dog_name)
    @pets[:dogs] << new_dog
  end

  def walk_dogs
    @pets[:dogs].each do |doggies|
      doggies.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |kitties|
      kitties.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fishies|
      fishies.mood = "happy"
    end
  end

  def sell_pets
    @pets.values.each do |types|
      types.each do |feeling|
      feeling.mood = "nervous"
        # binding.pry
      end
    end
    @pets.clear
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end


end