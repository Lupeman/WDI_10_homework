require "pry"
require "./calculator.rb"

calculator = Calculator.new

puts "Enter the numbers you want to work with:"
numbers_info = [gets.chomp.to_i, gets.chomp.to_i]

puts "Would you like to add, subtract, multiply or divide them?"
operator_info = gets.chomp
puts operator_info

calculator.perform_task(operator_info)




binding.pry
