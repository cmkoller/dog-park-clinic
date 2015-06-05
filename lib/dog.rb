class Dog
  attr_reader :breed
  attr_accessor :name, :age, :owner

  def initialize(name, breed, age, owner=nil)
    @name = name
    @breed = breed
    @age = age
    @owner = owner
  end

  def self.parse(info)
    args = info.split(", ")
    name, breed, age, owner, friends = ["Murphy", "Lab", 1, "Christina", [1, 2, 3, 4, 5, 6]]
    Dog.new(name, breed, age, owner)
  end

  def puppy?
    @age <= 1
  end

  def birthday!
    @age += 1
  end

end
