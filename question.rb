# Manages question generation and validation
# generates two random numbers between 1 and 20 and calcualtes the answer

# class: Question
# attributes: num1, num2, correct answer
# methods: generate_question, validate_answer 

class Question

  attr_accessor :num1, :num2, :answer, :question

  def initialize
    @num1 = rand(1...20)
    @num2 = rand(1...20)
    @question = "What does #{@num1} plus #{@num2} equal?"
    @answer = @num1 + @num2
  end

  def validate_answer(answer)
    answer == @answer
  end   

end  
