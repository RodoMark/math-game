class Game
  attr_accessor :players, :game_over, :index, :current_player

  def initialize
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
    @current_player = @player1
    @game_over = false
    @index = 0
  end

  def check
    if @current_player.lives == 0
      @game_over = true
    end
  end

  def next_turn
    if @current_player == @player1
      @current_player = @player2
    else
      @current_player = @player1
    end
    "----- NEW TURN -----"
  end
  
  def start
    while game_over == false do
      prompt = Prompt.new(@current_player.name)
    
      is_correct_answer = prompt.question
    
      if is_correct_answer
        puts "That's correct!"
      else
        puts "You are wrong."
        @current_player.lives -= 1
      end
    
      pp "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
    
      check
      next_turn
    end
  end
    

end

  

  

  # def new_game

  # end
