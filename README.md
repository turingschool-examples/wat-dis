## Wat Dis? - Exercises in Inspecting Ruby Code

This repository contains a series of exercises intended to help you practice using `pry` to inspect what's happening in a Ruby program.

### Setup

```
git clone https://github.com/turingschool-examples/wat-dis.git
cd wat-dis
```

### Working through the exercises

Each ruby file in the repo contains a short exercise consisting of some ruby code and some questions (embedded in comments in the code) for you to answer.

For example:

```ruby
require "pry"
class Pizza
  def bake(temp)
    # Q: What is the value of temp?
    # (you should pry here to find out!)
    # A: _______________
    if temp > 300
      @cooked = true
    end
  end
end

Pizza.new.bake(400)
```

To complete the exercise, use `pry` to pause the code at that spot and examine the context. Don't forget that pry allows you to invoke any methods or access any variables that would be available at that particular location in the code!

### Recommended Order

1. `dragon.rb`
2. `pirate.rb`
3. `hippogriff.rb`
4. `medusa.rb`
5. `trick_or_treat.rb`
