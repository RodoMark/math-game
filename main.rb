require 'pp'
require './Game.rb'
require './Player.rb'
require './Prompt.rb'

index = 0

game = Game.new

def next_turn
  index += 1
  if index > 1 
    index = 0
  end
end

player1 = Player.new('Player 1')
game.players.push(player1)
player2 = Player.new('Player 2')
game.players.push(player2)

pp game.players

 
while !game.game_over do
  current_player = game.players[index]
  prompt = Prompt.new(current_player.name)

  is_correct_answer = prompt.question

  if is_correct_answer
    puts "That's correct!"
  else
    puts "You are wrong."
    current_player.lives -= 1
  end

  pp current_player.lives

  player1.lives = 0

  game.check
  next_turn
end
  






