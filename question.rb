# Manages question generation and answer validation
# Generates two random numbers between 1 and 20, calculates the answer and generates the entire question

class Question

  attr_accessor :num1, :num2, :answer, :question

  # Initialize variables for numbers, question and correct answer
  def initialize
    @num1 = rand(1...20)
    @num2 = rand(1...20)
    @question = "What does #{@num1} plus #{@num2} equal?"
    @answer = @num1 + @num2
  end

  # Method to check if answer input by user is the correct answer
  def validate_answer(answer)
    answer == @answer
  end   
end  
