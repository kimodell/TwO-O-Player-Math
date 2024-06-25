# MANAGES GAME FLOW
# Starts the game with player 1, plays turn, displays score, then switches players
# Contains game loop to manage current player

class Game
  attr_accessor :player1, :player2, :current_player

  # Intialize players 1 and 2, start game with player one as current_player
  def initialize (player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = player1
  end 
  
  # Method to start game loop
  def start
    # Continue game loop until one of the players has no more lives
    until !@player1.alive || !@player2.alive

    # Start new turn for current player  
    turn = Turn.new(@current_player)
    # Execute the turn
    turn.play
    display_scores
    switch_players
    end
    # Display winner once game loop has ended
    winner
  end
  
  # Method to check who current player is, then switch between players
  def switch_players
    @current_player = @current_player == @player1 ? @player2 : @player1
  end  

  # Method to dsplay current scores
  def display_scores
    puts "Scores: P1: #{@player1.current_score}"
    puts "        P2: #{@player2.current_score}"
  end

  # Method to determine and display winner
  def winner
    # Determine the winner based on which player is still alive
    winner = @player1.alive ? @player1 : @player2
    loser = @player1.alive ? @player2 : @player1
    puts "Winner, winner, chicken dinner! #{winner.name} wins with a score of #{winner.lives} / #{loser.lives}"
  end
end  