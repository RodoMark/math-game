class Prompt
  attr_accessor

  def initialize(name)
    @name = name
  end

  def question
    x = rand(1..20)
    y = rand(1..20)

    correct_answer = x + y

    puts "#{@name}: What does #{x} + #{y} equal?"

    player_answer = gets.chomp.to_i
      if player_answer == correct_answer
        return true
      else
        return false
      end
    end

  

  @correct_answer = 0
  

end