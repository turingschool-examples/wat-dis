require "pry"

class Pirate
  attr_reader :name, :patch
  attr_accessor :job, :cursed

  def initialize(name, apellation = "the Degenerate", job="Scallywag")
    # Q: How many LOCAL VARIABLES are defined here
    # Hint: use "ls" in pry to list local variables
    # A: _______________

    # Q: What is the value of apellation the
    #    FIRST time this code runs?
    # A: _______________
    # Q: What is the value of apellation the
    #    SECOND time this code runs?
    # A: _______________
    @name = name
    @job = job
    @cursed = 0
    @patch = true
  end

  def cursed?
    @cursed > 2
  end

  def commit_heinous_act
    @cursed += 1
  end

  def say(x)
    "arrrr #{x}"
  end

end


p1 = Pirate.new("Horace")

p2 = Pirate.new("Mike", "the Salty", "Timber Shiver-er")

# Q: Is p2 cursed?
# A: _______________

# Q: What code could you execute in pry to make
#    p2 become cursed?
# A: _______________
