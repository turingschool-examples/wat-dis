require "pry"

class Costume
  attr_reader :style
  def initialize(style)
    # Q: How many times does this line run?
    # A: _______________

    # Q: What is style each time?
    # A: _______________
    @style = style
  end
end

class Candy
  attr_reader :type
  def initialize(type)
    # Q: How many times does this line run?
    # A: _______________

    # Q: What is type each time?
    # A: _______________
    @type = type
  end
end

class Bag
  attr_reader :candies
  def initialize
    @candies = []
  end

  def empty?
    @candies.empty?
  end

  def <<(candy)
    # Q: How many times does this line run?
    # A: _______________
    @candies << candy
  end

  def count
    @candies.count
  end

  def take_candy
    @candies.pop
  end

  def contains?(candy_type)
    @candies.map do |candy|
      candy.type
    end.include?(candy_type)
  end
end

class TrickOrTreater
  attr_reader :costume, :bag
  def initialize(costume)
    @costume = costume
    @bag = Bag.new
  end

  def receive_candy(candy)
    # Q: How many times does this line run?
    # A: _______________
    bag << candy
  end

  def candy_count
    bag.count
  end

  def has_candy?
    bag.count > 0
  end

  def eat
    # Q: What is the class of self?
    # A: _______________

    # Q: How many candies are currently in the bag?
    # A: _______________

    # Q: What is the last candy in the bag?
    # A: _______________

    # Q: What line gets executed during the next method call?
    # A: _______________

    candy = bag.take_candy

    # Q: How many candies are currently in the bag?
    # A: _______________

    # Q: What line gets executed during the next method call?
    # A: _______________

    # Q: What type of candy is "candy"
    # A: _______________

    # Q: What is now the last candy in the bag?
    # A: _______________
    puts "MMM Tasty #{candy.type}"
  end

  def dressed_up_as
    costume.style
  end
end


candies = [Candy.new("Pile o Gummies"),
           Candy.new("Licorice"),
           Candy.new("Pizza")]

costume = Costume.new("UV-Deprived Programmer")

t = TrickOrTreater.new(costume)

# Q: What is t.dressed_up_as ?
# A: _______________

# Q: What is the object_id of the value returned by t.dressed_up_as
# A: _______________

# Q: What is the object_id of the value returned by costume.style
# A: _______________

candies.each do |c|
  t.receive_candy(c)
end

# Q: Are "candies" and "t.bag.candies" the same?
# A: _______________

t.eat

# Q: Are "candies" and "t.bag.candies" the same?
# A: _______________
