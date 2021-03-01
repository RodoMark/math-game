class Prompt
  attr_accessor :correct_answer

  def initialize(name)
    @name = name
  end

  def question
    @x = rand(1..20)
    @y = rand(1..20)

    self.correct_answer = x + y

    puts "#{name}: What does #{x} + #{y} equal?"
  end

  @correct_answer = 0
  

end