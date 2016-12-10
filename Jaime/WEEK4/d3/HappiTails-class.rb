
class Animal
  attr_accessor :name, :age, :gender, :species, :toys

  def initialize(name, age, gender, species, toys)
    @name = name
    @age = age
    @gender = gender
    @species = species
    @toys = toys
  end
end

class Client
  attr_accessor :name, :num_children, :age, :pets

  def initialize(name, num_children, age, pets)
    @name = name
    @num_children = num_children
    @age = age
    @pets = pets
  end
end
