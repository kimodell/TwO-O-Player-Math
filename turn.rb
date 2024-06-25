# Manage the logic for a single turn.
# Interact with the player by asking a question and checking their answer.
# Update the player's state (lives) based on their answer.
# Manages user input

class Turn 
  attr_accessor :player, :question

  # Initalize player and question variables
  def initialize(player)
    @player = player
    @question = Question.new
  end

  # Method to display question, handle user input and determine if user input is the correct answer/check validation.
  # Displays message based on result of validation check.
  def play
    puts "---- NEW TURN ----"
    puts "#{player.name}: #{@question.question}"
    print "> "
    answer = gets.chomp.to_i
    if @question.validate_answer(answer)
      puts "#{player.name}: YES! That is correct!"
    else
      puts "#{player.name}: N00b! Sorry, that is incorrect!"
      player.lose_life
    end
  end
end  