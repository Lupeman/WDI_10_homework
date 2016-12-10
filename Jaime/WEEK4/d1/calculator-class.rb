require "pry"
require "./calculator.rb"

calculator = Calculator.new

def get_info(calculator)
  puts "Enter the numbers you want to work with:"
  calculator.value1 = gets.chomp.to_i
  calculator.value2 = gets.chomp.to_i

  puts "Would you like to add, subtract, multiply, divide or quit?"
  calculator.operator_info = gets.chomp
end

get_info(calculator)
calculator.perform_task

def try_again
  puts "Anything else you want to work on? (y/n)"
  try_again_answer = gets.chomp
  if try_again_answer == "y"
    get_info
  elsif try_again_answer == "n"
    quit
  end
end



# binding.pry
