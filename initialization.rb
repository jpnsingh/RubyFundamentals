## Object initialization

class Spaceship
  def initialize(name)
    @name = name
    @power_level = 100
  end
end

# initialize the object as a constructor call
ship = Spaceship.new('Sample')
p ship

## destroy need not happen explicitly as there is a garbage collector (mark and sweep) to do it
