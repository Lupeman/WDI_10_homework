# COMPUTER_NUMBER = rand(0 - 10)
# ask_question = "Guess a number between 1 and 10:"
# my_guess = ""
#
# while my_guess != COMPUTER_NUMBER do
#   puts ask_question
#   my_guess = gets.to_i
# end
# puts "Congrats! Good guess!"


#Extension

puts "How high to do you wanna go?"
numHigh = gets.to_i
COMPUTER_NUMBER = rand(0 - numHigh)
ask_for_guess = "Guess a number between 0 and #{numHigh}."
my_guess = ""

puts ask_for_guess
while my_guess != COMPUTER_NUMBER do
  my_guess = gets.to_i
  if my_guess > COMPUTER_NUMBER
    puts "Wrong, guess lower!"
  elsif my_guess < COMPUTER_NUMBER
    puts "Wrong, guess higher"
  else
    puts "Congrats! Good guess!"
  end
end
