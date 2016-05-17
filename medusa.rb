require "pry"

class Medusa

  attr_reader :name
  attr_accessor :statues

  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(x)
    # Q: What is the count of @statues
    # A: _______________

    # Q: What is the class of self
    # A: _______________

    # Q: What LINE will be executed next?
    # HINT: Use "step" inside of pry to take a "step"
    # to the next place that is executed in code.
    # A: _______________
    x.be_stoned(self)
    @statues.push(x)

    # Q: What is the count of @statues
    # A: _______________
  end

  def statues
    @statues
  end

end

class Person

  attr_reader :name

  def initialize(name)
    @name = name
    @stone = false
  end

  def be_stoned(attacker)
    # Q: What is the class of self
    # A: _______________

    # Q: What is the class of attacker
    # A: _______________

    puts "Alack! Being turned to stone by #{attacker.name}"
    @stone = true
  end

  def stoned?
    @stone
  end

end


m = Medusa.new("Gorgonzola")

p = Person.new("Perseus")

m.stare(p)
