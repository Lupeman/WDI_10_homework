class Calculator
  attr_accessor :value1, :value2, :operator_info

  # def operator_info
  #   return @operator_info
  # end
  #
  # def operator_info=(value)
  #   @operator_info = value
  # end
  # def initialize(value1, value2, operator)
  #   @value1 = value1
  #   @value2 = value2
  #   @operator = operator
  # end

  def add
    answer_string = @value1 + @value2
    puts "#{@value1} + #{@value2} = #{answer_string}"
    try_again
  end

  def subtract
    answer_string = @value1 - @value2
    puts "#{@value1} - #{@value2} = #{answer_string}"
    try_again
  end

  def multiply
    answer_string = @value1 * @value2
    puts "#{@value1} * #{@value2} = #{answer_string}"
    try_again
  end

  def divide
    answer_string = @value1 / @value2
    puts "#{@value1} / #{@value2} = #{answer_string}"
    try_again
  end

  def quit
    puts "Exiting now..."
  end

  def perform_task
    if @operator_info == "add"
      add
    elsif @operator_info == "subtract"
      subtract
    elsif @operator_info == "multiply"
      multiply
    elsif @operator_info == "divide"
      divide
    else
      quit
    end
  end
end
