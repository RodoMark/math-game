Prompt
random_number(1 and 20)
display_question("#{current_player.name} What does (rnd1) + (rnd2) equal?)
correct_answer(rnd1 + rnd2)
check_answer(user input, "correct"/"wrong", current_player.lives--)


Game
new_game
next_turn(current_player toggle)
game_over = false
current_player = [0, 1]


Player:
name
answer
lives


