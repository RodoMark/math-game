class Game
  attr_accessor :players, :game_over

  def initialize
    @players = []
    @game_over = false
  end

  def check
    players.each do |p|
      if p.lives == 0
        self.game_over = true
      end
    end
  end

  

  

  # def new_game

  # end



  
end