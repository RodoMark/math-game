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

 
while game.game_over == false do
  current_player = game.players[game.index]
  prompt = Prompt.new(current_player.name)

  is_correct_answer = prompt.question

  if is_correct_answer
    puts "That's correct!"
  else
    puts "You are wrong."
    current_player.lives -= 1
  end

  pp "#{current_player.name} lives => #{current_player.lives}"

  game.check
  game.next_turn
end
  






