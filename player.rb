#initialize a name and number of lives (3), set lives based on wins or losses, check if player has lost

#class: Player
#attributes: name, lives, 
#methods: lose_life, is_alive?, current_score

class Player 
  attr_accessor  :name, :lives, :score

  def initialize (name)
    @name = name
    @lives = 3
    @score = 0
  end  

  def is_ailve?
    @lives > 0
  end
  
  def lose_life
    @lives -= 1
  end

  def current_score
    "#{@lives}/3"
  end  

end  