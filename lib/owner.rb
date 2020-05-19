class Owner
  
  attr_reader :name, :species
  
  @@all = []
 
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    
    
  end 
  
  def say_species
    "I am a #{@species}." 
  end
  
  
  def self.all 
    @@all
  end 
  
  
  def self.count
    @@all.count
  end 
  
  
  def self.reset_all
    
    @@all.clear
  end 
  
  def cats 
    Cat.all.select { |cat_inst| cat_inst.owner == self }
  end  
  
  
  def dogs 
    
    Dog.all.select { | dog | dog.owner == self }
    
  end
  
  def buy_cat(cat)
    new_cat = Cat.new(cat, self)
    
    
  end
  
  def buy_dog(dog)
    new_dog = Dog.new(dog, self)
    
  end 
  
  
  def walk_dogs(name, new_mood)
    Dog.new(name, self).mood = new_mood
    
  end
  
  def feed_cats
    Cat.new.mood = "happy"
  end
  
  def sell_pets
    
  end
  
  
  def list_pets
    dogs_count =
    cats_count = 
    puts "I have 2 dog(s), and 2 cat(s)."
    
  end
  
end