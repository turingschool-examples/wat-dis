require "pry"

class Hippogriff

  attr_reader :name, :color
  attr_accessor :moonrocks

  def initialize(name, color)
    @name = name
    @color = color
    @moonrocks = []
  end

  def fly(rock)
    @moonrocks.push(rock)
    rock.magicalness = true
  end

  def sack
    # Q: How many rocks are in @moonrocks?
    # A: _______________
    # Q: How many of them are magic?
    # (try rock.magic? to find out)
    # A: _______________
    @moonrocks
  end

end

class Moonstone

  attr_reader :color
  attr_accessor :magicalness

  def initialize(color)
    @color = color
    # Q: How can you make pry stop here
    # for the "amber" Moonrock ONLY
    @magicalness = false
  end

  def magic?
    @magicalness
  end
end

h = Hippogriff.new("Buckbeak", "brindle")
rocks = [Moonstone.new("rose"), Moonstone.new("amber"), Moonstone.new("onyx")]

rocks.each do |rock|
  # Q: How many times does this line get hit?
  # A: _______________
  h.fly(rock)
end

colors = h.sack.map do |r|
  r.color
end
