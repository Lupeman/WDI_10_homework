class Calculator

attr_accessor :value1, :value2, :operator

# def initialize(value1, value2, operator)
#   @value1 = value1
#   @value2 = value2
#   @operator = operator
# end

def add
answer_string = @value1 + @value2
puts answer_string
puts "#{@value1} + #{@value2} = #{answer_string}"
end

def subtract
answer_string = @value1 - @value2
puts "#{@value1} - #{@value2} = #{answer_string}"
end

def multiply
  answer_string = @value1 * @value2
  puts "#{@value1} * #{@value2} = #{answer_string}"
end

def divide
  answer_string = @value1 / @value2
  puts "#{@value1} / #{@value2} = #{answer_string}"
end

def perform_task
  puts operator_info
  if @operator_info == "add"
puts @operator_info
  end
end

end
