class Werewolf
  attr_reader :name, :location
  attr_accessor :human, :change, :werewolf

  def initialize(name, location="london")
    @name = name
    @location = location
    @human = true
    @change = 0
    @werewolf = false
  end

  def human?
    @change.odd? ? false : true
  end

  def change!
    @change += 1
  end

  def werewolf?
   @change.odd? ? @werewolf = true : @werewolf = false
  end

end
