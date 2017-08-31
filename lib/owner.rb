class Owner

  @@all = []
  attr_accessor :name
  attr_reader :species

  def initialize(name, species = "human")
    @name = name
    @species = species
    @@all << self
    @pets = {fishes:[],dogs:[],cats:[]}
  end

  def self.all
    @@all
  end

  def self.count
    self.all.size
  end

  def self.reset_all
    self.all.clear
  end

  def say_species
    "I am a #{self.species}."
  end

  def pets
    @pets
  end


end
