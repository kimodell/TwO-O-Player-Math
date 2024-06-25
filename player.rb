# Initialize a name and number of lives (3), set lives if question answered incorrectly, check if player has zero lives left

class Player 
  attr_accessor  :name, :lives, :score

  # Initialize variables for name, lives and current score
  def initialize (name)
    @name = name
    @lives = 3
    @score = 0
  end  

  # Method to check if player has more and zero lives
  def alive
    @lives > 0
  end
  
  # Method to change players number of lives
  def lose_life
    @lives -= 1
  end

  # Method to display players current score
  def current_score
    "#{@lives}/3"
  end  

end  