class Prompt
  attr_accessor

  def initialize(name)
    @name = name
  end

  def new_question
    x = rand(1..20)
    y = rand(1..20)

    puts "#{name}: What does #{x} + #{y} equal?"
  end

  @correct_answer = 0
  

end