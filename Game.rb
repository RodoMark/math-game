class Game
  attr_accessor :players, :game_over, :index

  def initialize
    @players = []
    @game_over = false
    @index = 0
  end

  def check
    players.each do |p|
      if p.lives == 0
        @game_over = true
      end
    end

    def next_turn
      if @index >= self.players.length - 1 
        @index = 0
      else
        @index += 1
      end
      "----- NEW TURN -----"
    end

  end

  

  

  # def new_game

  # end



  
end