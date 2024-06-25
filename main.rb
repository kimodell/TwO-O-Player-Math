# Start the game loop

require "./game"
require "./player"
require "./question"
require "./turn"

player1 = Player.new("Player 1")
player2 = Player.new("Player 2")

game = Game.new(player1, player2)
game.start