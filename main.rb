require 'pp'
require './Game.rb'
require './Player.rb'
require './Prompt.rb'

game = Game.new

def next_turn
  index += 1
  if index > 1 
    index = 0
  end
end

def check

end

player1 = Player.new('Player 1')
game.players.push(player1)
player2 = Player.new('Player 2')
game.players.push(player2)

pp game.players

index = 0
pp game.game_over

player1.lives = 0

game.check
pp game.game_over

while !game.game_over do
  current_player = game.players[index]
  prompt = Prompt.new(current_player.name)

  prompt.question

  player_answer = gets.chomp
  if player_answer == prompt.correct_answer
    prompt.correct
  else
    prompt.wrong
    current_player.lives -= 1
  end

  # game.check
  next_turn
end


