require 'pp'
require './Game.rb'
require './Player.rb'
require './Prompt.rb'

game = Game.new





pp game.players

 
game.start
 
puts "-----GAME OVER!-----" 
puts "#{game.current_player.name} wins."






