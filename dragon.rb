require "pry"
class Dragon

  attr_reader :name, :rider, :color
  attr_accessor :hungryness, :food_consumed, :fire

  def initialize(name, color, rider)
    @name = name
    binding.pry
    # Q: What is color?
    # A: _______________
    # Q: What is @color?
    # A: _______________
    @color = color
    # Q: What is @color?
    # A: _______________
    # Q: What is @color.object_id
    # A: _______________
    # Q: What is color.object_id
    # A: _______________
    @rider = rider
    @hungryness = true
    @food_consumed = 0
  end

  def hungry?
    @hungryness
  end

  def eat
   @food_consumed += 1
   if @food_consumed < 3
     @hungryness = true
   else
     @hungryness = false
   end
  end

  def breathe_fire
    if @hungryness
      "NO, too hungry"
    else
      @hungryness = true
      @food_consumed = @food_consumed - 3
      "ROOOAR FIRE"
    end
  end
end


d = Dragon.new("Drogon", "Black", "Daenerys")
# Q: What is d.hungry?
# A: _______________

d.eat
d.eat

# Q: What is d.hungry?
# A: _______________

d.eat

# Q: What happens if we ask d.breath_fire
# A: _______________

# Q: What happens if we ask d.food_consumed AFTER asking d.breath_fire
# A: _______________
