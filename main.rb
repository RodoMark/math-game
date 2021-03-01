require 'pp'
require './Game.rb'
require './Player.rb'
require './Prompt.rb'

game = Game.new
game.start
 
puts "-----GAME OVER!-----" 
puts "#{game.current_player.name} wins."






