require "pry"
require "./HappiTails-class.rb"

# Animal and Client database
@animal_log = []
@client_log =[]


# Method to gather information on animal and create an Animal object to push to the database.
def create_animal_log
  puts "What is the animals name?"
  @name = gets.chomp
  puts "How old is #{@name}?"
  @age = gets.chomp.to_i
  puts "What gender is #{@name}? (m/f)"
  @gender = gets.chomp
  puts "What type of animal is it?"
  @species = gets.chomp
  puts "What toys do they play with?"
  @toys = [gets.chomp]
  animal1 = Animal.new(@name, @age, @gender, @species, @toys)
  @animal_log.push(animal1)
  add_animal_to_shelter
end

# Ask user whether they would like to add additional animals to the shelter database.
def add_animal_to_shelter
  add_animal = "y"
  loop do
  break if add_animal == "n"
    puts "Would you like to add another animal to the shelter database? (y/n)"
    add_animal = gets.chomp
    if add_animal == "y"
      create_animal_log
    end
  end
  menu_options
end


# Method to gather information on the client and create a Client object to push to the database.
def create_client_log
  puts "What is the clients name?"
  @name = gets.chomp
  puts "How many kids does #{@name} have?"
  @num_children = gets.chomp.to_i
  puts "How old is #{@name}?"
  @age = gets.chomp.to_i
  puts "What animals do you have already?"
  @pets = gets.chomp
  client1 = Client.new(@name, @num_children, @age, @pets)
  @client_log.push(client1)
  add_client_to_shelter
end

# Ask user whether they would like to add additional animals to the shelter database.
def add_client_to_shelter
  add_client = "y"
  loop do
  break if add_client == "n"
    puts "Would you like to add another client to the shelter database? (y/n)"
    add_client = gets.chomp
    if add_client == "y"
      create_client_log
    end
  end
  menu_options
end

# The shelter database
  Shelter = {
    animals: @animal_log,
    clients: @client_log
  }

# Method to show all client names listed in database and allows user to select one and get more information.
  def show_clients
    x = 0
    num1 = Shelter[:clients].length
    begin
      puts "#{Shelter[:clients][x].name}"
      x += 1
    end while x < num1
    puts "Enter the name of the person you would like more information on:"
    person_name = gets.chomp
    i = 0
    num = Shelter[:clients].length
    begin
      if Shelter[:clients][i].name == person_name
        return Shelter[:clients][i]
      end
    i += 1
    end while i < num
  menu_options
  end

# Method to show all animal names listed in database and allows user to select one and get more information.
  def show_animals
    x = 0
    num1 = Shelter[:animals].length
    begin
      puts "#{Shelter[:animals][x].name}"
      x += 1
    end while x < num1
    puts "Enter the name of the animal you would like more information on:"
    animal_name = gets.chomp
    i = 0
    num = Shelter[:animals].length
    begin
      if Shelter[:animals][i].name == animal_name
        return Shelter[:animals][i]
      end
    i += 1
    end while i < num
  menu_options
  end

def exit_program
  exit
end


# Program intro with menu to allow user to chose what they would like to do.
def menu_options
  puts "Your options are:
  - show animals,
  - show clients,
  - add animal,
  - add client,
  - exit.
  What would you like to do?
  "
  to_do = gets.chomp
  if to_do == "show animals"
    show_animals
  elsif to_do == "show clients"
    show_clients
  elsif to_do == "add animal"
    create_animal_log
  elsif to_do == "add client"
    create_client_log
  elsif to_do == "exit"
    exit_program
  end
end

puts "Welcome to the 200-OK animal shelter!"
menu_options




binding.pry
