require 'pp'
require './Game.rb'
require './Player.rb'
require './Prompt.rb'

game = Game.new

player1 = Player.new('Player 1')
game.players.push(player1)
player2 = Player.new('Player 2')
game.players.push(player2)

pp game.players

index = 0

prompt = Prompt.new
prompt.new_question



